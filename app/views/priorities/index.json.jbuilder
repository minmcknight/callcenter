json.array!(@priorities) do |priority|
  json.extract! priority, :id, :name, :rank
  json.url priority_url(priority, format: :json)
end
