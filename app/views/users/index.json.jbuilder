json.array!(@users) do |user|
  json.extract! user, :id, :nom, :email
  json.url user_url(user, format: :json)
end
