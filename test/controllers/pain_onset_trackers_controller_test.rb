require 'test_helper'

class PainOnsetTrackersControllerTest < ActionController::TestCase
  setup do
    @pain_onset_tracker = pain_onset_trackers(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:pain_onset_trackers)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create pain_onset_tracker" do
    assert_difference('PainOnsetTracker.count') do
      post :create, pain_onset_tracker: { diary_id: @pain_onset_tracker.diary_id, pain_onset_speed: @pain_onset_tracker.pain_onset_speed }
    end

    assert_redirected_to pain_onset_tracker_path(assigns(:pain_onset_tracker))
  end

  test "should show pain_onset_tracker" do
    get :show, id: @pain_onset_tracker
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @pain_onset_tracker
    assert_response :success
  end

  test "should update pain_onset_tracker" do
    patch :update, id: @pain_onset_tracker, pain_onset_tracker: { diary_id: @pain_onset_tracker.diary_id, pain_onset_speed: @pain_onset_tracker.pain_onset_speed }
    assert_redirected_to pain_onset_tracker_path(assigns(:pain_onset_tracker))
  end

  test "should destroy pain_onset_tracker" do
    assert_difference('PainOnsetTracker.count', -1) do
      delete :destroy, id: @pain_onset_tracker
    end

    assert_redirected_to pain_onset_trackers_path
  end
end
