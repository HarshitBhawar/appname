require "test_helper"

class YusersControllerTest < ActionDispatch::IntegrationTest
  test "should get new" do
    get yusers_new_url
    assert_response :success
  end

  test "should get create" do
    get yusers_create_url
    assert_response :success
  end
end
