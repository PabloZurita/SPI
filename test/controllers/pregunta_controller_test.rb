require 'test_helper'

class PreguntaControllerTest < ActionDispatch::IntegrationTest
  setup do
    @preguntum = pregunta(:one)
  end

  test "should get index" do
    get pregunta_url
    assert_response :success
  end

  test "should get new" do
    get new_preguntum_url
    assert_response :success
  end

  test "should create preguntum" do
    assert_difference('Preguntum.count') do
      post pregunta_url, params: { preguntum: { id_pregunta: @preguntum.id_pregunta, tipo_pregunta: @preguntum.tipo_pregunta } }
    end

    assert_redirected_to preguntum_url(Preguntum.last)
  end

  test "should show preguntum" do
    get preguntum_url(@preguntum)
    assert_response :success
  end

  test "should get edit" do
    get edit_preguntum_url(@preguntum)
    assert_response :success
  end

  test "should update preguntum" do
    patch preguntum_url(@preguntum), params: { preguntum: { id_pregunta: @preguntum.id_pregunta, tipo_pregunta: @preguntum.tipo_pregunta } }
    assert_redirected_to preguntum_url(@preguntum)
  end

  test "should destroy preguntum" do
    assert_difference('Preguntum.count', -1) do
      delete preguntum_url(@preguntum)
    end

    assert_redirected_to pregunta_url
  end
end
