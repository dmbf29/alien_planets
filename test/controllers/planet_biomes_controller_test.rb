require 'test_helper'

class PlanetBiomesControllerTest < ActionDispatch::IntegrationTest
  test "should get new" do
    get planet_biomes_new_url
    assert_response :success
  end

end
