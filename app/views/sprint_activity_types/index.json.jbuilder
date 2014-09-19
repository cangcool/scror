json.array!(@sprint_activity_types) do |sprint_activity_type|
  json.extract! sprint_activity_type, :name, :format
  json.url sprint_activity_type_url(sprint_activity_type, format: :json)
end