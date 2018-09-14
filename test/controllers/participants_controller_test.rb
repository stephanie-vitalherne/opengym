require 'test_helper'

class ParticipantsControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get participants_index_url
    assert_response :success
  end

  test "should get edit" do
    get participants_edit_url
    assert_response :success
  end

  test "should get show" do
    get participants_show_url
    assert_response :success
  end

  test "should get new" do
    get participants_new_url
    assert_response :success
  end

end
