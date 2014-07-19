json.array!(@games) do |game|
  json.extract! game, :turn, :terrain
  json.url game_url(game, format: :json)
end