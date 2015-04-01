require 'test_helper'

class MissionMembershipsControllerTest < ActionController::TestCase
  setup do
    @mission_membership = mission_memberships(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:mission_memberships)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create mission_membership" do
    assert_difference('MissionMembership.count') do
      post :create, mission_membership: { mission_id: @mission_membership.mission_id, user_id: @mission_membership.user_id }
    end

    assert_redirected_to mission_membership_path(assigns(:mission_membership))
  end

  test "should show mission_membership" do
    get :show, id: @mission_membership
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @mission_membership
    assert_response :success
  end

  test "should update mission_membership" do
    patch :update, id: @mission_membership, mission_membership: { mission_id: @mission_membership.mission_id, user_id: @mission_membership.user_id }
    assert_redirected_to mission_membership_path(assigns(:mission_membership))
  end

  test "should destroy mission_membership" do
    assert_difference('MissionMembership.count', -1) do
      delete :destroy, id: @mission_membership
    end

    assert_redirected_to mission_memberships_path
  end
end
