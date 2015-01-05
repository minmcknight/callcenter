class Responder < ActiveRecord::Base
  has_many :calls
  belongs_to :status, class_name: "ResponderStatus"


  def current_call
    if calls.length == 0 
      return nil
    else
      in_progress = CallStatus.find_by(name: "In Progress") 
      return calls.find_by(status_id: in_progress.id)
    end
  end

def self.assign(call)
  idle = ResponderStatus.find_by(name: "Idle")
  busy = ResponderStatus.find_by(name: "Busy")
  in_progress = CallStatus.find_by(name: "In Progress")
  new_status = CallStatus.find_by(name: "New")
  idle_responders = Responder.where(status_id: idle.id)
  if idle_responders.length > 0
    idle_responder = idle_responders.first
    idle_responder.status = busy
    call.responder = idle_responder
    call.status = in_progress
    idle_responder.save
    call.save
  else 
    busy_responders = Responder.where(status_id: busy.id)
    busy_responders.each do |responder|
      current_call = responder.current_call
      if call.priority.rank > current_call.priority.rank
        current_call.status = new_status
        current_call.responder_id = nil
        current_call.save
        call.responder_id = responder.id
        call.status = in_progress
        call.save
        break
      end#if
    end#do
  end#ifelse
end#def
end#class
