require 'test_helper'

class PainDescriptionsControllerTest < ActionController::TestCase
  setup do
    @pain_description = pain_descriptions(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:pain_descriptions)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create pain_description" do
    assert_difference('PainDescription.count') do
      post :create, pain_description: { description_name: @pain_description.description_name, diary_id: @pain_description.diary_id, user_id: @pain_description.user_id }
    end

    assert_redirected_to pain_description_path(assigns(:pain_description))
  end

  test "should show pain_description" do
    get :show, id: @pain_description
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @pain_description
    assert_response :success
  end

  test "should update pain_description" do
    patch :update, id: @pain_description, pain_description: { description_name: @pain_description.description_name, diary_id: @pain_description.diary_id, user_id: @pain_description.user_id }
    assert_redirected_to pain_description_path(assigns(:pain_description))
  end

  test "should destroy pain_description" do
    assert_difference('PainDescription.count', -1) do
      delete :destroy, id: @pain_description
    end

    assert_redirected_to pain_descriptions_path
  end
end
