json.array!(@products) do |product|
  json.extract! product, :id, :product_type_id, :artist_id, :name, :short_description, :description, :on_sale, :price
  json.url product_url(product, format: :json)
end
