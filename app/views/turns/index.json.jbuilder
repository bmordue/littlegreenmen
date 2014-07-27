json.array!(@turns) do |turn|
  json.extract! turn, :sequence
  json.url turn_url(turn, format: :json)
end