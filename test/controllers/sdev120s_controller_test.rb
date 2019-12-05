require 'test_helper'

class Sdev120sControllerTest < ActionDispatch::IntegrationTest
  setup do
    @sdev120 = sdev120s(:one)
  end

  test "should get index" do
    get sdev120s_url
    assert_response :success
  end

  test "should get new" do
    get new_sdev120_url
    assert_response :success
  end

  test "should create sdev120" do
    assert_difference('Sdev120.count') do
      post sdev120s_url, params: { sdev120: {  } }
    end

    assert_redirected_to sdev120_url(Sdev120.last)
  end

  test "should show sdev120" do
    get sdev120_url(@sdev120)
    assert_response :success
  end

  test "should get edit" do
    get edit_sdev120_url(@sdev120)
    assert_response :success
  end

  test "should update sdev120" do
    patch sdev120_url(@sdev120), params: { sdev120: {  } }
    assert_redirected_to sdev120_url(@sdev120)
  end

  test "should destroy sdev120" do
    assert_difference('Sdev120.count', -1) do
      delete sdev120_url(@sdev120)
    end

    assert_redirected_to sdev120s_url
  end
end
