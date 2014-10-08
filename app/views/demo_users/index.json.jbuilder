json.array!(@demo_users) do |demo_user|
  json.extract! demo_user, 
  json.url demo_user_url(demo_user, format: :json)
end