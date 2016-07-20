json.array!(@car_products) do |car_product|
  json.extract! car_product, :id, :product_id, :cart_id
  json.url car_product_url(car_product, format: :json)
end
