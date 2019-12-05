require 'test_helper'

class Sdev140sControllerTest < ActionDispatch::IntegrationTest
  setup do
    @sdev140 = sdev140s(:one)
  end

  test "should get index" do
    get sdev140s_url
    assert_response :success
  end

  test "should get new" do
    get new_sdev140_url
    assert_response :success
  end

  test "should create sdev140" do
    assert_difference('Sdev140.count') do
      post sdev140s_url, params: { sdev140: {  } }
    end

    assert_redirected_to sdev140_url(Sdev140.last)
  end

  test "should show sdev140" do
    get sdev140_url(@sdev140)
    assert_response :success
  end

  test "should get edit" do
    get edit_sdev140_url(@sdev140)
    assert_response :success
  end

  test "should update sdev140" do
    patch sdev140_url(@sdev140), params: { sdev140: {  } }
    assert_redirected_to sdev140_url(@sdev140)
  end

  test "should destroy sdev140" do
    assert_difference('Sdev140.count', -1) do
      delete sdev140_url(@sdev140)
    end

    assert_redirected_to sdev140s_url
  end
end
