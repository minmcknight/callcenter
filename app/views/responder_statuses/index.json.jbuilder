json.array!(@responder_statuses) do |responder_status|
  json.extract! responder_status, :id, :name
  json.url responder_status_url(responder_status, format: :json)
end
