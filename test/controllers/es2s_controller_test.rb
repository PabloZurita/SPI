require 'test_helper'

class Es2sControllerTest < ActionDispatch::IntegrationTest
  setup do
    @es2 = es2s(:one)
  end

  test "should get index" do
    get es2s_url
    assert_response :success
  end

  test "should get new" do
    get new_es2_url
    assert_response :success
  end

  test "should create es2" do
    assert_difference('Es2.count') do
      post es2s_url, params: { es2: { contrato_id: @es2.contrato_id, linea_id: @es2.linea_id } }
    end

    assert_redirected_to es2_url(Es2.last)
  end

  test "should show es2" do
    get es2_url(@es2)
    assert_response :success
  end

  test "should get edit" do
    get edit_es2_url(@es2)
    assert_response :success
  end

  test "should update es2" do
    patch es2_url(@es2), params: { es2: { contrato_id: @es2.contrato_id, linea_id: @es2.linea_id } }
    assert_redirected_to es2_url(@es2)
  end

  test "should destroy es2" do
    assert_difference('Es2.count', -1) do
      delete es2_url(@es2)
    end

    assert_redirected_to es2s_url
  end
end
