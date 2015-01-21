require 'test_helper'

class MentalStatesControllerTest < ActionController::TestCase
  setup do
    @mental_state = mental_states(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:mental_states)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create mental_state" do
    assert_difference('MentalState.count') do
      post :create, mental_state: { diary_id: @mental_state.diary_id, disposition: @mental_state.disposition, mood_stability: @mental_state.mood_stability, stress: @mental_state.stress, user_id: @mental_state.user_id }
    end

    assert_redirected_to mental_state_path(assigns(:mental_state))
  end

  test "should show mental_state" do
    get :show, id: @mental_state
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @mental_state
    assert_response :success
  end

  test "should update mental_state" do
    patch :update, id: @mental_state, mental_state: { diary_id: @mental_state.diary_id, disposition: @mental_state.disposition, mood_stability: @mental_state.mood_stability, stress: @mental_state.stress, user_id: @mental_state.user_id }
    assert_redirected_to mental_state_path(assigns(:mental_state))
  end

  test "should destroy mental_state" do
    assert_difference('MentalState.count', -1) do
      delete :destroy, id: @mental_state
    end

    assert_redirected_to mental_states_path
  end
end
