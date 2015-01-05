class Call < ActiveRecord::Base
  belongs_to :responder
  belongs_to :type
  belongs_to :priority
  belongs_to :status, class_name: "CallStatus"



end
