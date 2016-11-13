require 'test_helper'

class IndicadoresControllerTest < ActionDispatch::IntegrationTest
  test "should get prueba_indicadores" do
    get indicadores_prueba_indicadores_url
    assert_response :success
  end

end
