require 'test_helper'

class ParcialCalculosControllerTest < ActionDispatch::IntegrationTest
  test "should get listar" do
    get parcial_calculos_listar_url
    assert_response :success
  end

end
