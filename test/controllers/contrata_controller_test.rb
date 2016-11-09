require 'test_helper'

class ContrataControllerTest < ActionDispatch::IntegrationTest
  setup do
    @contratum = contrata(:one)
  end

  test "should get index" do
    get contrata_url
    assert_response :success
  end

  test "should get new" do
    get new_contratum_url
    assert_response :success
  end

  test "should create contratum" do
    assert_difference('Contratum.count') do
      post contrata_url, params: { contratum: { cliente_id: @contratum.cliente_id, linea_id: @contratum.linea_id } }
    end

    assert_redirected_to contratum_url(Contratum.last)
  end

  test "should show contratum" do
    get contratum_url(@contratum)
    assert_response :success
  end

  test "should get edit" do
    get edit_contratum_url(@contratum)
    assert_response :success
  end

  test "should update contratum" do
    patch contratum_url(@contratum), params: { contratum: { cliente_id: @contratum.cliente_id, linea_id: @contratum.linea_id } }
    assert_redirected_to contratum_url(@contratum)
  end

  test "should destroy contratum" do
    assert_difference('Contratum.count', -1) do
      delete contratum_url(@contratum)
    end

    assert_redirected_to contrata_url
  end
end
