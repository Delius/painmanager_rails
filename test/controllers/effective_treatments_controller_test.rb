require 'test_helper'

class EffectiveTreatmentsControllerTest < ActionController::TestCase
  setup do
    @effective_treatment = effective_treatments(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:effective_treatments)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create effective_treatment" do
    assert_difference('EffectiveTreatment.count') do
      post :create, effective_treatment: { diary_id: @effective_treatment.diary_id, name: @effective_treatment.name, user_id: @effective_treatment.user_id }
    end

    assert_redirected_to effective_treatment_path(assigns(:effective_treatment))
  end

  test "should show effective_treatment" do
    get :show, id: @effective_treatment
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @effective_treatment
    assert_response :success
  end

  test "should update effective_treatment" do
    patch :update, id: @effective_treatment, effective_treatment: { diary_id: @effective_treatment.diary_id, name: @effective_treatment.name, user_id: @effective_treatment.user_id }
    assert_redirected_to effective_treatment_path(assigns(:effective_treatment))
  end

  test "should destroy effective_treatment" do
    assert_difference('EffectiveTreatment.count', -1) do
      delete :destroy, id: @effective_treatment
    end

    assert_redirected_to effective_treatments_path
  end
end
