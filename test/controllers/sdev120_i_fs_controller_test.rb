require 'test_helper'

class Sdev120IFsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @sdev120_if = sdev120_ifs(:one)
  end

  test "should get index" do
    get sdev120_ifs_url
    assert_response :success
  end

  test "should get new" do
    get new_sdev120_if_url
    assert_response :success
  end

  test "should create sdev120_if" do
    assert_difference('Sdev120If.count') do
      post sdev120_ifs_url, params: { sdev120_if: {  } }
    end

    assert_redirected_to sdev120_if_url(Sdev120If.last)
  end

  test "should show sdev120_if" do
    get sdev120_if_url(@sdev120_if)
    assert_response :success
  end

  test "should get edit" do
    get edit_sdev120_if_url(@sdev120_if)
    assert_response :success
  end

  test "should update sdev120_if" do
    patch sdev120_if_url(@sdev120_if), params: { sdev120_if: {  } }
    assert_redirected_to sdev120_if_url(@sdev120_if)
  end

  test "should destroy sdev120_if" do
    assert_difference('Sdev120If.count', -1) do
      delete sdev120_if_url(@sdev120_if)
    end

    assert_redirected_to sdev120_ifs_url
  end
end
