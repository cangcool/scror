json.array!(@sprint_activities) do |sprint_activity|
  json.extract! sprint_activity, :content, :spint_id, :sprint_activity_type_id
  json.url sprint_activity_url(sprint_activity, format: :json)
end