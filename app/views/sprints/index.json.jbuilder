json.array!(@sprints) do |sprint|
  json.extract! sprint, :name, :description, :project_id, :sprint_order_number, :start_at, :end_at, :sprint_state_id, :creator_id, :modifier_id
  json.url sprint_url(sprint, format: :json)
end