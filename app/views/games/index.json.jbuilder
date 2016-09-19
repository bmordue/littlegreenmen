json.array!(@games) do |game|
  json.extract! game, :id
  json.extract! game, :current_turn
  json.url game_url(game, format: :json)
	json.players game.players
end
