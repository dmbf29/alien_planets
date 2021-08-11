require 'test_helper'

class AliensControllerTest < ActionDispatch::IntegrationTest
  test "should get show" do
    get aliens_show_url
    assert_response :success
  end

end
