json.array!(@companies) do |company|
  json.extract! company, :name, :address, :country_id, :email, :web_address, :user_id
  json.url company_url(company, format: :json)
end