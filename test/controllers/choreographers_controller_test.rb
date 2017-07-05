require 'test_helper'

class ChoreographersControllerTest < ActionDispatch::IntegrationTest
  setup do
    @choreographer = choreographers(:one)
  end

  test "should get index" do
    get choreographers_url
    assert_response :success
  end

  test "should get new" do
    get new_choreographer_url
    assert_response :success
  end

  test "should create choreographer" do
    assert_difference('Choreographer.count') do
      post choreographers_url, params: { choreographer: { name: @choreographer.name } }
    end

    assert_redirected_to choreographer_url(Choreographer.last)
  end

  test "should show choreographer" do
    get choreographer_url(@choreographer)
    assert_response :success
  end

  test "should get edit" do
    get edit_choreographer_url(@choreographer)
    assert_response :success
  end

  test "should update choreographer" do
    patch choreographer_url(@choreographer), params: { choreographer: { name: @choreographer.name } }
    assert_redirected_to choreographer_url(@choreographer)
  end

  test "should destroy choreographer" do
    assert_difference('Choreographer.count', -1) do
      delete choreographer_url(@choreographer)
    end

    assert_redirected_to choreographers_url
  end
end
