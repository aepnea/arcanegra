require 'test_helper'

class ArtistProcuctGroupsControllerTest < ActionController::TestCase
  setup do
    @artist_procuct_group = artist_procuct_groups(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:artist_procuct_groups)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create artist_procuct_group" do
    assert_difference('ArtistProcuctGroup.count') do
      post :create, artist_procuct_group: { article_id: @artist_procuct_group.article_id, product_group_id: @artist_procuct_group.product_group_id }
    end

    assert_redirected_to artist_procuct_group_path(assigns(:artist_procuct_group))
  end

  test "should show artist_procuct_group" do
    get :show, id: @artist_procuct_group
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @artist_procuct_group
    assert_response :success
  end

  test "should update artist_procuct_group" do
    patch :update, id: @artist_procuct_group, artist_procuct_group: { article_id: @artist_procuct_group.article_id, product_group_id: @artist_procuct_group.product_group_id }
    assert_redirected_to artist_procuct_group_path(assigns(:artist_procuct_group))
  end

  test "should destroy artist_procuct_group" do
    assert_difference('ArtistProcuctGroup.count', -1) do
      delete :destroy, id: @artist_procuct_group
    end

    assert_redirected_to artist_procuct_groups_path
  end
end
