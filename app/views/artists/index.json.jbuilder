json.array!(@artists) do |artist|
  json.extract! artist, :id, :artist_id, :firstname, :lastname, :short_description, :description, :email, :web, :address, :city_id, :state_id, :country, :phone
  json.url artist_url(artist, format: :json)
end
