require 'test_helper'

class InsightsControllerTest < ActionController::TestCase
  setup do
    @insight = insights(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:insights)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create insight" do
    assert_difference('Insight.count') do
      post :create, insight: { contents: @insight.contents, insightable_id: @insight.insightable_id, insightable_type: @insight.insightable_type }
    end

    assert_redirected_to insight_path(assigns(:insight))
  end

  test "should show insight" do
    get :show, id: @insight
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @insight
    assert_response :success
  end

  test "should update insight" do
    patch :update, id: @insight, insight: { contents: @insight.contents, insightable_id: @insight.insightable_id, insightable_type: @insight.insightable_type }
    assert_redirected_to insight_path(assigns(:insight))
  end

  test "should destroy insight" do
    assert_difference('Insight.count', -1) do
      delete :destroy, id: @insight
    end

    assert_redirected_to insights_path
  end
end
