json.array!(@car_product_groups) do |car_product_group|
  json.extract! car_product_group, :id, :product_group_id, :cart_id
  json.url car_product_group_url(car_product_group, format: :json)
end
