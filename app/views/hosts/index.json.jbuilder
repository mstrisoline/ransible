json.array!(@hosts) do |host|
  json.extract! host, 
  json.url host_url(host, format: :json)
end
