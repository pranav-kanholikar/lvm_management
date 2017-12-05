require 'test_helper'

class LeaveesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @leavee = leavees(:one)
  end

  test "should get index" do
    get leavees_url
    assert_response :success
  end

  test "should get new" do
    get new_leavee_url
    assert_response :success
  end

  test "should create leavee" do
    assert_difference('Leavee.count') do
      post leavees_url, params: { leavee: { leave_from_date: @leavee.leave_from_date, leave_to_date: @leavee.leave_to_date, no_of_days: @leavee.no_of_days, reason: @leavee.reason } }
    end

    assert_redirected_to leavee_url(Leavee.last)
  end

  test "should show leavee" do
    get leavee_url(@leavee)
    assert_response :success
  end

  test "should get edit" do
    get edit_leavee_url(@leavee)
    assert_response :success
  end

  test "should update leavee" do
    patch leavee_url(@leavee), params: { leavee: { leave_from_date: @leavee.leave_from_date, leave_to_date: @leavee.leave_to_date, no_of_days: @leavee.no_of_days, reason: @leavee.reason } }
    assert_redirected_to leavee_url(@leavee)
  end

  test "should destroy leavee" do
    assert_difference('Leavee.count', -1) do
      delete leavee_url(@leavee)
    end

    assert_redirected_to leavees_url
  end
end
