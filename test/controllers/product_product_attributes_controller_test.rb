require 'test_helper'

class ProductProductAttributesControllerTest < ActionController::TestCase
  setup do
    @product_product_attribute = product_product_attributes(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:product_product_attributes)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create product_product_attribute" do
    assert_difference('ProductProductAttribute.count') do
      post :create, product_product_attribute: { product_attribute_id: @product_product_attribute.product_attribute_id, product_id: @product_product_attribute.product_id }
    end

    assert_redirected_to product_product_attribute_path(assigns(:product_product_attribute))
  end

  test "should show product_product_attribute" do
    get :show, id: @product_product_attribute
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @product_product_attribute
    assert_response :success
  end

  test "should update product_product_attribute" do
    patch :update, id: @product_product_attribute, product_product_attribute: { product_attribute_id: @product_product_attribute.product_attribute_id, product_id: @product_product_attribute.product_id }
    assert_redirected_to product_product_attribute_path(assigns(:product_product_attribute))
  end

  test "should destroy product_product_attribute" do
    assert_difference('ProductProductAttribute.count', -1) do
      delete :destroy, id: @product_product_attribute
    end

    assert_redirected_to product_product_attributes_path
  end
end
