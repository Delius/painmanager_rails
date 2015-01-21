require 'test_helper'

class OtherSymptomsControllerTest < ActionController::TestCase
  setup do
    @other_symptom = other_symptoms(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:other_symptoms)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create other_symptom" do
    assert_difference('OtherSymptom.count') do
      post :create, other_symptom: { diary_id: @other_symptom.diary_id, symotom_name: @other_symptom.symotom_name, user_id: @other_symptom.user_id }
    end

    assert_redirected_to other_symptom_path(assigns(:other_symptom))
  end

  test "should show other_symptom" do
    get :show, id: @other_symptom
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @other_symptom
    assert_response :success
  end

  test "should update other_symptom" do
    patch :update, id: @other_symptom, other_symptom: { diary_id: @other_symptom.diary_id, symotom_name: @other_symptom.symotom_name, user_id: @other_symptom.user_id }
    assert_redirected_to other_symptom_path(assigns(:other_symptom))
  end

  test "should destroy other_symptom" do
    assert_difference('OtherSymptom.count', -1) do
      delete :destroy, id: @other_symptom
    end

    assert_redirected_to other_symptoms_path
  end
end
