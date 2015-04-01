require 'test_helper'

class MissionProceduresControllerTest < ActionController::TestCase
  setup do
    @mission_procedure = mission_procedures(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:mission_procedures)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create mission_procedure" do
    assert_difference('MissionProcedure.count') do
      post :create, mission_procedure: { mission_id: @mission_procedure.mission_id, procedure_id: @mission_procedure.procedure_id }
    end

    assert_redirected_to mission_procedure_path(assigns(:mission_procedure))
  end

  test "should show mission_procedure" do
    get :show, id: @mission_procedure
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @mission_procedure
    assert_response :success
  end

  test "should update mission_procedure" do
    patch :update, id: @mission_procedure, mission_procedure: { mission_id: @mission_procedure.mission_id, procedure_id: @mission_procedure.procedure_id }
    assert_redirected_to mission_procedure_path(assigns(:mission_procedure))
  end

  test "should destroy mission_procedure" do
    assert_difference('MissionProcedure.count', -1) do
      delete :destroy, id: @mission_procedure
    end

    assert_redirected_to mission_procedures_path
  end
end
