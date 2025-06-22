require "test_helper"

class ReceptionistDashboardControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get receptionist_dashboard_index_url
    assert_response :success
  end
end
