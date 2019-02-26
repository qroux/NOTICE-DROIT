require 'test_helper'

class FichesControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get fiches_index_url
    assert_response :success
  end

  test "should get show" do
    get fiches_show_url
    assert_response :success
  end

  test "should get new" do
    get fiches_new_url
    assert_response :success
  end

  test "should get create" do
    get fiches_create_url
    assert_response :success
  end

  test "should get edit" do
    get fiches_edit_url
    assert_response :success
  end

  test "should get update" do
    get fiches_update_url
    assert_response :success
  end

end
