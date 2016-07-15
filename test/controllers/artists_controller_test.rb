require 'test_helper'

class ArtistsControllerTest < ActionController::TestCase
  setup do
    @artist = artists(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:artists)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create artist" do
    assert_difference('Artist.count') do
      post :create, artist: { address: @artist.address, artist_id: @artist.artist_id, city_id: @artist.city_id, country: @artist.country, description: @artist.description, email: @artist.email, firstname: @artist.firstname, lastname: @artist.lastname, phone: @artist.phone, short_description: @artist.short_description, state_id: @artist.state_id, web: @artist.web }
    end

    assert_redirected_to artist_path(assigns(:artist))
  end

  test "should show artist" do
    get :show, id: @artist
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @artist
    assert_response :success
  end

  test "should update artist" do
    patch :update, id: @artist, artist: { address: @artist.address, artist_id: @artist.artist_id, city_id: @artist.city_id, country: @artist.country, description: @artist.description, email: @artist.email, firstname: @artist.firstname, lastname: @artist.lastname, phone: @artist.phone, short_description: @artist.short_description, state_id: @artist.state_id, web: @artist.web }
    assert_redirected_to artist_path(assigns(:artist))
  end

  test "should destroy artist" do
    assert_difference('Artist.count', -1) do
      delete :destroy, id: @artist
    end

    assert_redirected_to artists_path
  end
end
