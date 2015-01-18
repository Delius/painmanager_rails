require 'test_helper'

class PainTriggersControllerTest < ActionController::TestCase
  setup do
    @pain_trigger = pain_triggers(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:pain_triggers)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create pain_trigger" do
    assert_difference('PainTrigger.count') do
      post :create, pain_trigger: { diary_id: @pain_trigger.diary_id, diary_id: @pain_trigger.diary_id, name: @pain_trigger.name, user_id: @pain_trigger.user_id, user_id: @pain_trigger.user_id }
    end

    assert_redirected_to pain_trigger_path(assigns(:pain_trigger))
  end

  test "should show pain_trigger" do
    get :show, id: @pain_trigger
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @pain_trigger
    assert_response :success
  end

  test "should update pain_trigger" do
    patch :update, id: @pain_trigger, pain_trigger: { diary_id: @pain_trigger.diary_id, diary_id: @pain_trigger.diary_id, name: @pain_trigger.name, user_id: @pain_trigger.user_id, user_id: @pain_trigger.user_id }
    assert_redirected_to pain_trigger_path(assigns(:pain_trigger))
  end

  test "should destroy pain_trigger" do
    assert_difference('PainTrigger.count', -1) do
      delete :destroy, id: @pain_trigger
    end

    assert_redirected_to pain_triggers_path
  end
end
