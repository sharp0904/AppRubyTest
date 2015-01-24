json.array!(@oiseaus) do |oiseau|
  json.extract! oiseau, :id, :nom, :race, :age
  json.url oiseau_url(oiseau, format: :json)
end
