json.array!(@sprint_task_types) do |sprint_task_type|
  json.extract! sprint_task_type, :name, :sprint_id, :color_code, :user_id
  json.url sprint_task_type_url(sprint_task_type, format: :json)
end