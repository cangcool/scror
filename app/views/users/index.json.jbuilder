json.array!(@users) do |user|
  json.extract! user, :fullname, :username, :password, :email, :avatar, :is_active, :last_access
  json.url user_url(user, format: :json)
end