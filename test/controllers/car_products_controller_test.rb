require 'test_helper'

class CarProductsControllerTest < ActionController::TestCase
  setup do
    @car_product = car_products(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:car_products)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create car_product" do
    assert_difference('CarProduct.count') do
      post :create, car_product: { cart_id: @car_product.cart_id, product_id: @car_product.product_id }
    end

    assert_redirected_to car_product_path(assigns(:car_product))
  end

  test "should show car_product" do
    get :show, id: @car_product
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @car_product
    assert_response :success
  end

  test "should update car_product" do
    patch :update, id: @car_product, car_product: { cart_id: @car_product.cart_id, product_id: @car_product.product_id }
    assert_redirected_to car_product_path(assigns(:car_product))
  end

  test "should destroy car_product" do
    assert_difference('CarProduct.count', -1) do
      delete :destroy, id: @car_product
    end

    assert_redirected_to car_products_path
  end
end
