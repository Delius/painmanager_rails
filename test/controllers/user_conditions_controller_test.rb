require 'test_helper'

class UserConditionsControllerTest < ActionController::TestCase
  setup do
    @user_condition = user_conditions(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:user_conditions)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create user_condition" do
    assert_difference('UserCondition.count') do
      post :create, user_condition: { user_condition_category: @user_condition.user_condition_category, user_condition_description: @user_condition.user_condition_description, user_condition_diagnosed: @user_condition.user_condition_diagnosed, user_id: @user_condition.user_id }
    end

    assert_redirected_to user_condition_path(assigns(:user_condition))
  end

  test "should show user_condition" do
    get :show, id: @user_condition
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @user_condition
    assert_response :success
  end

  test "should update user_condition" do
    patch :update, id: @user_condition, user_condition: { user_condition_category: @user_condition.user_condition_category, user_condition_description: @user_condition.user_condition_description, user_condition_diagnosed: @user_condition.user_condition_diagnosed, user_id: @user_condition.user_id }
    assert_redirected_to user_condition_path(assigns(:user_condition))
  end

  test "should destroy user_condition" do
    assert_difference('UserCondition.count', -1) do
      delete :destroy, id: @user_condition
    end

    assert_redirected_to user_conditions_path
  end
end
