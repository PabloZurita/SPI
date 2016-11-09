require 'test_helper'

class ContestaControllerTest < ActionDispatch::IntegrationTest
  setup do
    @contestum = contesta(:one)
  end

  test "should get index" do
    get contesta_url
    assert_response :success
  end

  test "should get new" do
    get new_contestum_url
    assert_response :success
  end

  test "should create contestum" do
    assert_difference('Contestum.count') do
      post contesta_url, params: { contestum: { encuesta_id: @contestum.encuesta_id, linea_id: @contestum.linea_id } }
    end

    assert_redirected_to contestum_url(Contestum.last)
  end

  test "should show contestum" do
    get contestum_url(@contestum)
    assert_response :success
  end

  test "should get edit" do
    get edit_contestum_url(@contestum)
    assert_response :success
  end

  test "should update contestum" do
    patch contestum_url(@contestum), params: { contestum: { encuesta_id: @contestum.encuesta_id, linea_id: @contestum.linea_id } }
    assert_redirected_to contestum_url(@contestum)
  end

  test "should destroy contestum" do
    assert_difference('Contestum.count', -1) do
      delete contestum_url(@contestum)
    end

    assert_redirected_to contesta_url
  end
end
