json.array!(@sign_up_users) do |sign_up_user|
  json.extract! sign_up_user, 
  json.url sign_up_user_url(sign_up_user, format: :json)
end