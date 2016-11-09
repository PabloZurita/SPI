require 'test_helper'

class AtravesdesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @atravesde = atravesdes(:one)
  end

  test "should get index" do
    get atravesdes_url
    assert_response :success
  end

  test "should get new" do
    get new_atravesde_url
    assert_response :success
  end

  test "should create atravesde" do
    assert_difference('Atravesde.count') do
      post atravesdes_url, params: { atravesde: { mdp_id: @atravesde.mdp_id, pago_id: @atravesde.pago_id } }
    end

    assert_redirected_to atravesde_url(Atravesde.last)
  end

  test "should show atravesde" do
    get atravesde_url(@atravesde)
    assert_response :success
  end

  test "should get edit" do
    get edit_atravesde_url(@atravesde)
    assert_response :success
  end

  test "should update atravesde" do
    patch atravesde_url(@atravesde), params: { atravesde: { mdp_id: @atravesde.mdp_id, pago_id: @atravesde.pago_id } }
    assert_redirected_to atravesde_url(@atravesde)
  end

  test "should destroy atravesde" do
    assert_difference('Atravesde.count', -1) do
      delete atravesde_url(@atravesde)
    end

    assert_redirected_to atravesdes_url
  end
end
