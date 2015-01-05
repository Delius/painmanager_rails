require 'test_helper'

class PainRecordsControllerTest < ActionController::TestCase
  setup do
    @pain_record = pain_records(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:pain_records)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create pain_record" do
    assert_difference('PainRecord.count') do
      post :create, pain_record: { pain_record_description: @pain_record.pain_record_description, pain_record_pain_duration: @pain_record.pain_record_pain_duration, pain_record_pain_level: @pain_record.pain_record_pain_level, pain_record_pain_placement: @pain_record.pain_record_pain_placement, pain_record_pain_type: @pain_record.pain_record_pain_type, user_id: @pain_record.user_id }
    end

    assert_redirected_to pain_record_path(assigns(:pain_record))
  end

  test "should show pain_record" do
    get :show, id: @pain_record
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @pain_record
    assert_response :success
  end

  test "should update pain_record" do
    patch :update, id: @pain_record, pain_record: { pain_record_description: @pain_record.pain_record_description, pain_record_pain_duration: @pain_record.pain_record_pain_duration, pain_record_pain_level: @pain_record.pain_record_pain_level, pain_record_pain_placement: @pain_record.pain_record_pain_placement, pain_record_pain_type: @pain_record.pain_record_pain_type, user_id: @pain_record.user_id }
    assert_redirected_to pain_record_path(assigns(:pain_record))
  end

  test "should destroy pain_record" do
    assert_difference('PainRecord.count', -1) do
      delete :destroy, id: @pain_record
    end

    assert_redirected_to pain_records_path
  end
end
