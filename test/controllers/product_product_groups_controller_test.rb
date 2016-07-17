require 'test_helper'

class ProductProductGroupsControllerTest < ActionController::TestCase
  setup do
    @product_product_group = product_product_groups(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:product_product_groups)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create product_product_group" do
    assert_difference('ProductProductGroup.count') do
      post :create, product_product_group: { product_group_id: @product_product_group.product_group_id, product_id: @product_product_group.product_id }
    end

    assert_redirected_to product_product_group_path(assigns(:product_product_group))
  end

  test "should show product_product_group" do
    get :show, id: @product_product_group
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @product_product_group
    assert_response :success
  end

  test "should update product_product_group" do
    patch :update, id: @product_product_group, product_product_group: { product_group_id: @product_product_group.product_group_id, product_id: @product_product_group.product_id }
    assert_redirected_to product_product_group_path(assigns(:product_product_group))
  end

  test "should destroy product_product_group" do
    assert_difference('ProductProductGroup.count', -1) do
      delete :destroy, id: @product_product_group
    end

    assert_redirected_to product_product_groups_path
  end
end
