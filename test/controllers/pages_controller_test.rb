require 'test_helper'

class PagesControllerTest < ActionDispatch::IntegrationTest
  test "should get home" do
    get pages_home_url
    assert_response :success
  end

  test "should get basketball" do
    get pages_basketball_url
    assert_response :success
  end

  test "should get football" do
    get pages_football_url
    assert_response :success
  end

  test "should get soccer" do
    get pages_soccer_url
    assert_response :success
  end

  test "should get other" do
    get pages_other_url
    assert_response :success
  end

  test "should get about" do
    get pages_about_url
    assert_response :success
  end

end
