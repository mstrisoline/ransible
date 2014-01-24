json.array!(@plays) do |play|
  json.extract! play, 
  json.url play_url(play, format: :json)
end
