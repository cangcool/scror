json.array!(@user_projects) do |user_project|
  json.extract! user_project, :user_id, :project_id, :user_role_id
  json.url user_project_url(user_project, format: :json)
end