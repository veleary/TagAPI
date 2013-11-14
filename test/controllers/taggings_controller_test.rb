require 'test_helper'

class TaggingsControllerTest < ActionController::TestCase
  setup do
    @tagging = taggings(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:taggings)
  end

  test "should create tagging" do
    assert_difference('Tagging.count') do
      post :create, tagging: { name: @tagging.name }
    end

    assert_response 201
  end

  test "should show tagging" do
    get :show, id: @tagging
    assert_response :success
  end

  test "should update tagging" do
    put :update, id: @tagging, tagging: { name: @tagging.name }
    assert_response 204
  end

  test "should destroy tagging" do
    assert_difference('Tagging.count', -1) do
      delete :destroy, id: @tagging
    end

    assert_response 204
  end
end
