require 'test_helper'

class LandingControllerTest < ActionDispatch::IntegrationTest
  test "should get storeLocator" do
    get landing_storeLocator_url
    assert_response :success
  end

end
