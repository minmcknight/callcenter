json.array!(@responders) do |responder|
  json.extract! responder, :id, :name, :status_id
  json.url responder_url(responder, format: :json)
end
