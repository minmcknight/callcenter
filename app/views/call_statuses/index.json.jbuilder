json.array!(@call_statuses) do |call_status|
  json.extract! call_status, :id, :name
  json.url call_status_url(call_status, format: :json)
end
