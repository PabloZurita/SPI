require 'test_helper'

class EsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @e = es(:one)
  end

  test "should get index" do
    get es_url
    assert_response :success
  end

  test "should get new" do
    get new_e_url
    assert_response :success
  end

  test "should create e" do
    assert_difference('E.count') do
      post es_url, params: { e: { fijomovil_id: @e.fijomovil_id, linea_id: @e.linea_id } }
    end

    assert_redirected_to e_url(E.last)
  end

  test "should show e" do
    get e_url(@e)
    assert_response :success
  end

  test "should get edit" do
    get edit_e_url(@e)
    assert_response :success
  end

  test "should update e" do
    patch e_url(@e), params: { e: { fijomovil_id: @e.fijomovil_id, linea_id: @e.linea_id } }
    assert_redirected_to e_url(@e)
  end

  test "should destroy e" do
    assert_difference('E.count', -1) do
      delete e_url(@e)
    end

    assert_redirected_to es_url
  end
end
