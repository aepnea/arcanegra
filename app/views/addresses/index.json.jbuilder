json.array!(@addresses) do |address|
  json.extract! address, :id, :customer_id, :city_id, :state_id, :address
  json.url address_url(address, format: :json)
end
