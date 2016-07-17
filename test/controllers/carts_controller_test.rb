require 'test_helper'

class CartsControllerTest < ActionController::TestCase
  setup do
    @cart = carts(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:carts)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create cart" do
    assert_difference('Cart.count') do
      post :create, cart: { customer_id: @cart.customer_id, gift: @cart.gift, gift_message: @cart.gift_message, product_group_id: @cart.product_group_id, product_id: @cart.product_id, state_cart_id: @cart.state_cart_id }
    end

    assert_redirected_to cart_path(assigns(:cart))
  end

  test "should show cart" do
    get :show, id: @cart
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @cart
    assert_response :success
  end

  test "should update cart" do
    patch :update, id: @cart, cart: { customer_id: @cart.customer_id, gift: @cart.gift, gift_message: @cart.gift_message, product_group_id: @cart.product_group_id, product_id: @cart.product_id, state_cart_id: @cart.state_cart_id }
    assert_redirected_to cart_path(assigns(:cart))
  end

  test "should destroy cart" do
    assert_difference('Cart.count', -1) do
      delete :destroy, id: @cart
    end

    assert_redirected_to carts_path
  end
end
