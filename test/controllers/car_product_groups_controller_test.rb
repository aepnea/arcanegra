require 'test_helper'

class CarProductGroupsControllerTest < ActionController::TestCase
  setup do
    @car_product_group = car_product_groups(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:car_product_groups)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create car_product_group" do
    assert_difference('CarProductGroup.count') do
      post :create, car_product_group: { cart_id: @car_product_group.cart_id, product_group_id: @car_product_group.product_group_id }
    end

    assert_redirected_to car_product_group_path(assigns(:car_product_group))
  end

  test "should show car_product_group" do
    get :show, id: @car_product_group
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @car_product_group
    assert_response :success
  end

  test "should update car_product_group" do
    patch :update, id: @car_product_group, car_product_group: { cart_id: @car_product_group.cart_id, product_group_id: @car_product_group.product_group_id }
    assert_redirected_to car_product_group_path(assigns(:car_product_group))
  end

  test "should destroy car_product_group" do
    assert_difference('CarProductGroup.count', -1) do
      delete :destroy, id: @car_product_group
    end

    assert_redirected_to car_product_groups_path
  end
end
