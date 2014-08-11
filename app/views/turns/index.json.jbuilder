json.array!(@turns) do |turn|
  json.extract! turn, :sequence
  json.url game_turn_url(@game, turn, format: :json)
end
