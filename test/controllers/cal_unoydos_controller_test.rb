require 'test_helper'

class CalUnoydosControllerTest < ActionDispatch::IntegrationTest
  test "should get prueba" do
    get cal_unoydos_prueba_url
    assert_response :success
  end

end
