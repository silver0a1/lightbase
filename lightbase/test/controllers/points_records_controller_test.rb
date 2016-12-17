require 'test_helper'

class PointsRecordsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @points_record = points_records(:one)
  end

  test "should get index" do
    get points_records_url
    assert_response :success
  end

  test "should get new" do
    get new_points_record_url
    assert_response :success
  end

  test "should create points_record" do
    assert_difference('PointsRecord.count') do
      post points_records_url, params: { points_record: { created_at: @points_record.created_at, user_id: @points_record.user_id, value: @points_record.value } }
    end

    assert_redirected_to points_record_url(PointsRecord.last)
  end

  test "should show points_record" do
    get points_record_url(@points_record)
    assert_response :success
  end

  test "should get edit" do
    get edit_points_record_url(@points_record)
    assert_response :success
  end

  test "should update points_record" do
    patch points_record_url(@points_record), params: { points_record: { created_at: @points_record.created_at, user_id: @points_record.user_id, value: @points_record.value } }
    assert_redirected_to points_record_url(@points_record)
  end

  test "should destroy points_record" do
    assert_difference('PointsRecord.count', -1) do
      delete points_record_url(@points_record)
    end

    assert_redirected_to points_records_url
  end
end
