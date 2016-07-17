json.array!(@orders) do |order|
  json.extract! order, :id, :cart_id, :customer_id, :order_status_id, :payment_status_id, :payment_type_id, :address_id
  json.url order_url(order, format: :json)
end
