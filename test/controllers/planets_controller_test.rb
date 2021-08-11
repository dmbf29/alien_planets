require 'test_helper'

class PlanetsControllerTest < ActionDispatch::IntegrationTest
  test "should get new" do
    get planets_new_url
    assert_response :success
  end

end
