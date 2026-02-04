require "test_helper"

class Admin::BusinessHoursControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get admin_business_hours_index_url
    assert_response :success
  end

  test "should get edit" do
    get admin_business_hours_edit_url
    assert_response :success
  end

  test "should get update" do
    get admin_business_hours_update_url
    assert_response :success
  end
end
