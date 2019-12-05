require 'test_helper'

class Sdev153sControllerTest < ActionDispatch::IntegrationTest
  setup do
    @sdev153 = sdev153s(:one)
  end

  test "should get index" do
    get sdev153s_url
    assert_response :success
  end

  test "should get new" do
    get new_sdev153_url
    assert_response :success
  end

  test "should create sdev153" do
    assert_difference('Sdev153.count') do
      post sdev153s_url, params: { sdev153: {  } }
    end

    assert_redirected_to sdev153_url(Sdev153.last)
  end

  test "should show sdev153" do
    get sdev153_url(@sdev153)
    assert_response :success
  end

  test "should get edit" do
    get edit_sdev153_url(@sdev153)
    assert_response :success
  end

  test "should update sdev153" do
    patch sdev153_url(@sdev153), params: { sdev153: {  } }
    assert_redirected_to sdev153_url(@sdev153)
  end

  test "should destroy sdev153" do
    assert_difference('Sdev153.count', -1) do
      delete sdev153_url(@sdev153)
    end

    assert_redirected_to sdev153s_url
  end
end
