json.array!(@product_product_groups) do |product_product_group|
  json.extract! product_product_group, :id, :product_id, :product_group_id
  json.url product_product_group_url(product_product_group, format: :json)
end
