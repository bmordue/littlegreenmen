json.array!(@game_actions) do |game_action|
  json.extract! game_action, :description
  json.url game_action_url(game_action, format: :json)
end