require 'test_helper'

class HomeControllerTest < ActionController::TestCase
  test "should get artists" do
    get :artists
    assert_response :success
  end

  test "should get products" do
    get :products
    assert_response :success
  end

  test "should get whatwedo" do
    get :whatwedo
    assert_response :success
  end

end
