json.array!(@players) do |player|
  json.extract! player, :name
  json.url game_player_url(@game, player, format: :json)
end