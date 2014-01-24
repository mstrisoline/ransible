json.array!(@host_vars) do |host_var|
  json.extract! host_var, 
  json.url host_var_url(host_var, format: :json)
end
