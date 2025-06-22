require "test_helper"

class DoctorsDashboardControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get doctors_dashboard_index_url
    assert_response :success
  end
end
