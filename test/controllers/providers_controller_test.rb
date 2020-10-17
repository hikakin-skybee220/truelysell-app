require 'test_helper'

class ProvidersControllerTest < ActionDispatch::IntegrationTest
  test "should get dashboard" do
    get providers_dashboard_url
    assert_response :success
  end

end
