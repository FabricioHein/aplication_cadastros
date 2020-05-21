require 'test_helper'

class MapaControllerTest < ActionDispatch::IntegrationTest
  test "should get Index" do
    get mapa_Index_url
    assert_response :success
  end

end
