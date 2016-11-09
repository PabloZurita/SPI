require 'test_helper'

class SeparasControllerTest < ActionDispatch::IntegrationTest
  setup do
    @separa = separas(:one)
  end

  test "should get index" do
    get separas_url
    assert_response :success
  end

  test "should get new" do
    get new_separa_url
    assert_response :success
  end

  test "should create separa" do
    assert_difference('Separa.count') do
      post separas_url, params: { separa: { linea_id: @separa.linea_id, segmento_id: @separa.segmento_id } }
    end

    assert_redirected_to separa_url(Separa.last)
  end

  test "should show separa" do
    get separa_url(@separa)
    assert_response :success
  end

  test "should get edit" do
    get edit_separa_url(@separa)
    assert_response :success
  end

  test "should update separa" do
    patch separa_url(@separa), params: { separa: { linea_id: @separa.linea_id, segmento_id: @separa.segmento_id } }
    assert_redirected_to separa_url(@separa)
  end

  test "should destroy separa" do
    assert_difference('Separa.count', -1) do
      delete separa_url(@separa)
    end

    assert_redirected_to separas_url
  end
end
