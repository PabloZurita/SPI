require 'test_helper'

class NubeControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get nube_index_url
    assert_response :success
  end

end
