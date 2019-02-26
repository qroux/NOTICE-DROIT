require 'test_helper'

class FavoritesControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get favorites_index_url
    assert_response :success
  end

  test "should get show" do
    get favorites_show_url
    assert_response :success
  end

  test "should get new" do
    get favorites_new_url
    assert_response :success
  end

  test "should get create" do
    get favorites_create_url
    assert_response :success
  end

  test "should get delete" do
    get favorites_delete_url
    assert_response :success
  end

end
