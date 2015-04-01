require 'test_helper'

class MissionEnvironmentsControllerTest < ActionController::TestCase
  setup do
    @mission_environment = mission_environments(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:mission_environments)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create mission_environment" do
    assert_difference('MissionEnvironment.count') do
      post :create, mission_environment: { environment_id: @mission_environment.environment_id, mission_id: @mission_environment.mission_id }
    end

    assert_redirected_to mission_environment_path(assigns(:mission_environment))
  end

  test "should show mission_environment" do
    get :show, id: @mission_environment
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @mission_environment
    assert_response :success
  end

  test "should update mission_environment" do
    patch :update, id: @mission_environment, mission_environment: { environment_id: @mission_environment.environment_id, mission_id: @mission_environment.mission_id }
    assert_redirected_to mission_environment_path(assigns(:mission_environment))
  end

  test "should destroy mission_environment" do
    assert_difference('MissionEnvironment.count', -1) do
      delete :destroy, id: @mission_environment
    end

    assert_redirected_to mission_environments_path
  end
end
