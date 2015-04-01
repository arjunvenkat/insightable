require 'test_helper'

class MissionPersonasControllerTest < ActionController::TestCase
  setup do
    @mission_persona = mission_personas(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:mission_personas)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create mission_persona" do
    assert_difference('MissionPersona.count') do
      post :create, mission_persona: { mission_id: @mission_persona.mission_id, persona_id: @mission_persona.persona_id }
    end

    assert_redirected_to mission_persona_path(assigns(:mission_persona))
  end

  test "should show mission_persona" do
    get :show, id: @mission_persona
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @mission_persona
    assert_response :success
  end

  test "should update mission_persona" do
    patch :update, id: @mission_persona, mission_persona: { mission_id: @mission_persona.mission_id, persona_id: @mission_persona.persona_id }
    assert_redirected_to mission_persona_path(assigns(:mission_persona))
  end

  test "should destroy mission_persona" do
    assert_difference('MissionPersona.count', -1) do
      delete :destroy, id: @mission_persona
    end

    assert_redirected_to mission_personas_path
  end
end
