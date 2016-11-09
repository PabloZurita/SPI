require 'test_helper'

class ContienesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @contiene = contienes(:one)
  end

  test "should get index" do
    get contienes_url
    assert_response :success
  end

  test "should get new" do
    get new_contiene_url
    assert_response :success
  end

  test "should create contiene" do
    assert_difference('Contiene.count') do
      post contienes_url, params: { contiene: { encuestum_id: @contiene.encuestum_id, preguntum_id: @contiene.preguntum_id } }
    end

    assert_redirected_to contiene_url(Contiene.last)
  end

  test "should show contiene" do
    get contiene_url(@contiene)
    assert_response :success
  end

  test "should get edit" do
    get edit_contiene_url(@contiene)
    assert_response :success
  end

  test "should update contiene" do
    patch contiene_url(@contiene), params: { contiene: { encuestum_id: @contiene.encuestum_id, preguntum_id: @contiene.preguntum_id } }
    assert_redirected_to contiene_url(@contiene)
  end

  test "should destroy contiene" do
    assert_difference('Contiene.count', -1) do
      delete contiene_url(@contiene)
    end

    assert_redirected_to contienes_url
  end
end
