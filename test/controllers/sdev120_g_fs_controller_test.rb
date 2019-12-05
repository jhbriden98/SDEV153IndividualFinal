require 'test_helper'

class Sdev120GFsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @sdev120_gf = sdev120_gfs(:one)
  end

  test "should get index" do
    get sdev120_gfs_url
    assert_response :success
  end

  test "should get new" do
    get new_sdev120_gf_url
    assert_response :success
  end

  test "should create sdev120_gf" do
    assert_difference('Sdev120Gf.count') do
      post sdev120_gfs_url, params: { sdev120_gf: {  } }
    end

    assert_redirected_to sdev120_gf_url(Sdev120Gf.last)
  end

  test "should show sdev120_gf" do
    get sdev120_gf_url(@sdev120_gf)
    assert_response :success
  end

  test "should get edit" do
    get edit_sdev120_gf_url(@sdev120_gf)
    assert_response :success
  end

  test "should update sdev120_gf" do
    patch sdev120_gf_url(@sdev120_gf), params: { sdev120_gf: {  } }
    assert_redirected_to sdev120_gf_url(@sdev120_gf)
  end

  test "should destroy sdev120_gf" do
    assert_difference('Sdev120Gf.count', -1) do
      delete sdev120_gf_url(@sdev120_gf)
    end

    assert_redirected_to sdev120_gfs_url
  end
end
