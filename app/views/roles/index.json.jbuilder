json.array!(@roles) do |role|
  json.extract! role, 
  json.url role_url(role, format: :json)
end
