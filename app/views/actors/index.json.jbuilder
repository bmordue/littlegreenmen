json.array!(@actors) do |actor|
  json.extract! actor, 
  json.url actor_url(actor, format: :json)
end