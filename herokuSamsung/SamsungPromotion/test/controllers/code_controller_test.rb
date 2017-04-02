require 'test_helper'

class CodeControllerTest < ActionDispatch::IntegrationTest
  test "should get home" do
    get code_home_url
    assert_response :success
  end

end
