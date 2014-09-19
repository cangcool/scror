json.array!(@projects) do |project|
  json.extract! project, :name, :description, :start_at, :end_at, :is_active, :user_id, :company_id, :project_type_id
  json.url project_url(project, format: :json)
end