require 'test_helper'

class PainDurationsControllerTest < ActionController::TestCase
  setup do
    @pain_duration = pain_durations(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:pain_durations)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create pain_duration" do
    assert_difference('PainDuration.count') do
      post :create, pain_duration: { diary_id: @pain_duration.diary_id, duration_level: @pain_duration.duration_level, user_id: @pain_duration.user_id }
    end

    assert_redirected_to pain_duration_path(assigns(:pain_duration))
  end

  test "should show pain_duration" do
    get :show, id: @pain_duration
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @pain_duration
    assert_response :success
  end

  test "should update pain_duration" do
    patch :update, id: @pain_duration, pain_duration: { diary_id: @pain_duration.diary_id, duration_level: @pain_duration.duration_level, user_id: @pain_duration.user_id }
    assert_redirected_to pain_duration_path(assigns(:pain_duration))
  end

  test "should destroy pain_duration" do
    assert_difference('PainDuration.count', -1) do
      delete :destroy, id: @pain_duration
    end

    assert_redirected_to pain_durations_path
  end
end
