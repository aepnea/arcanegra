require 'test_helper'

class StateCartsControllerTest < ActionController::TestCase
  setup do
    @state_cart = state_carts(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:state_carts)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create state_cart" do
    assert_difference('StateCart.count') do
      post :create, state_cart: { state: @state_cart.state }
    end

    assert_redirected_to state_cart_path(assigns(:state_cart))
  end

  test "should show state_cart" do
    get :show, id: @state_cart
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @state_cart
    assert_response :success
  end

  test "should update state_cart" do
    patch :update, id: @state_cart, state_cart: { state: @state_cart.state }
    assert_redirected_to state_cart_path(assigns(:state_cart))
  end

  test "should destroy state_cart" do
    assert_difference('StateCart.count', -1) do
      delete :destroy, id: @state_cart
    end

    assert_redirected_to state_carts_path
  end
end
