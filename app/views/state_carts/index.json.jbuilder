json.array!(@state_carts) do |state_cart|
  json.extract! state_cart, :id, :state
  json.url state_cart_url(state_cart, format: :json)
end
