require 'test_helper'

class PainIntensityLevelsControllerTest < ActionController::TestCase
  setup do
    @pain_intensity_level = pain_intensity_levels(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:pain_intensity_levels)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create pain_intensity_level" do
    assert_difference('PainIntensityLevel.count') do
      post :create, pain_intensity_level: { diary_id: @pain_intensity_level.diary_id, intensity_level: @pain_intensity_level.intensity_level, user_id: @pain_intensity_level.user_id }
    end

    assert_redirected_to pain_intensity_level_path(assigns(:pain_intensity_level))
  end

  test "should show pain_intensity_level" do
    get :show, id: @pain_intensity_level
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @pain_intensity_level
    assert_response :success
  end

  test "should update pain_intensity_level" do
    patch :update, id: @pain_intensity_level, pain_intensity_level: { diary_id: @pain_intensity_level.diary_id, intensity_level: @pain_intensity_level.intensity_level, user_id: @pain_intensity_level.user_id }
    assert_redirected_to pain_intensity_level_path(assigns(:pain_intensity_level))
  end

  test "should destroy pain_intensity_level" do
    assert_difference('PainIntensityLevel.count', -1) do
      delete :destroy, id: @pain_intensity_level
    end

    assert_redirected_to pain_intensity_levels_path
  end
end
