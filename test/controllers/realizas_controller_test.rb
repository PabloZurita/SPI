require 'test_helper'

class RealizasControllerTest < ActionDispatch::IntegrationTest
  setup do
    @realiza = realizas(:one)
  end

  test "should get index" do
    get realizas_url
    assert_response :success
  end

  test "should get new" do
    get new_realiza_url
    assert_response :success
  end

  test "should create realiza" do
    assert_difference('Realiza.count') do
      post realizas_url, params: { realiza: { linea_id: @realiza.linea_id, pago_id: @realiza.pago_id } }
    end

    assert_redirected_to realiza_url(Realiza.last)
  end

  test "should show realiza" do
    get realiza_url(@realiza)
    assert_response :success
  end

  test "should get edit" do
    get edit_realiza_url(@realiza)
    assert_response :success
  end

  test "should update realiza" do
    patch realiza_url(@realiza), params: { realiza: { linea_id: @realiza.linea_id, pago_id: @realiza.pago_id } }
    assert_redirected_to realiza_url(@realiza)
  end

  test "should destroy realiza" do
    assert_difference('Realiza.count', -1) do
      delete realiza_url(@realiza)
    end

    assert_redirected_to realizas_url
  end
end
