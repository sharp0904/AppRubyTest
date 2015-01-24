json.array!(@chiens) do |chien|
  json.extract! chien, :id, :nom, :race
  json.url chien_url(chien, format: :json)
end
