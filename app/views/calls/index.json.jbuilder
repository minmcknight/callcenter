json.array!(@calls) do |call|
  json.extract! call, :id, :priority_id, :type_id, :responder_id, :address, :phone_number, :summary, :status_id
  json.url call_url(call, format: :json)
end
