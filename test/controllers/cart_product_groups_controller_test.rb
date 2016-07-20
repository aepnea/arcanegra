require 'test_helper'

class CartProductGroupsControllerTest < ActionController::TestCase
  setup do
    @cart_product_group = cart_product_groups(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:cart_product_groups)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create cart_product_group" do
    assert_difference('CartProductGroup.count') do
      post :create, cart_product_group: { cart_id: @cart_product_group.cart_id, product_group_id: @cart_product_group.product_group_id }
    end

    assert_redirected_to cart_product_group_path(assigns(:cart_product_group))
  end

  test "should show cart_product_group" do
    get :show, id: @cart_product_group
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @cart_product_group
    assert_response :success
  end

  test "should update cart_product_group" do
    patch :update, id: @cart_product_group, cart_product_group: { cart_id: @cart_product_group.cart_id, product_group_id: @cart_product_group.product_group_id }
    assert_redirected_to cart_product_group_path(assigns(:cart_product_group))
  end

  test "should destroy cart_product_group" do
    assert_difference('CartProductGroup.count', -1) do
      delete :destroy, id: @cart_product_group
    end

    assert_redirected_to cart_product_groups_path
  end
end
