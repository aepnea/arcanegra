json.array!(@cart_product_groups) do |cart_product_group|
  json.extract! cart_product_group, :id, :product_group_id, :cart_id
  json.url cart_product_group_url(cart_product_group, format: :json)
end
