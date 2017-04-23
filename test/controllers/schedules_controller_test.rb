require 'test_helper'

class SchedulesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @schedule = schedules(:one)
  end

  test "should get index" do
    get schedules_url
    assert_response :success
  end

  test "should get new" do
    get new_schedule_url
    assert_response :success
  end

  test "should create schedule" do
    assert_difference('Schedule.count') do
      post schedules_url, params: { schedule: { field_id: @schedule.field_id, h0: @schedule.h0, h10: @schedule.h10, h11: @schedule.h11, h12: @schedule.h12, h13: @schedule.h13, h14: @schedule.h14, h15: @schedule.h15, h16: @schedule.h16, h17: @schedule.h17, h18: @schedule.h18, h19: @schedule.h19, h1: @schedule.h1, h20: @schedule.h20, h21: @schedule.h21, h22: @schedule.h22, h23: @schedule.h23, h24: @schedule.h24, h25: @schedule.h25, h26: @schedule.h26, h27: @schedule.h27, h28: @schedule.h28, h29: @schedule.h29, h2: @schedule.h2, h30: @schedule.h30, h31: @schedule.h31, h32: @schedule.h32, h33: @schedule.h33, h34: @schedule.h34, h35: @schedule.h35, h36: @schedule.h36, h37: @schedule.h37, h38: @schedule.h38, h39: @schedule.h39, h3: @schedule.h3, h40: @schedule.h40, h41: @schedule.h41, h42: @schedule.h42, h43: @schedule.h43, h44: @schedule.h44, h45: @schedule.h45, h46: @schedule.h46, h47: @schedule.h47, h4: @schedule.h4, h5: @schedule.h5, h6: @schedule.h6, h7: @schedule.h7, h8: @schedule.h8, h9: @schedule.h9 } }
    end

    assert_redirected_to schedule_url(Schedule.last)
  end

  test "should show schedule" do
    get schedule_url(@schedule)
    assert_response :success
  end

  test "should get edit" do
    get edit_schedule_url(@schedule)
    assert_response :success
  end

  test "should update schedule" do
    patch schedule_url(@schedule), params: { schedule: { field_id: @schedule.field_id, h0: @schedule.h0, h10: @schedule.h10, h11: @schedule.h11, h12: @schedule.h12, h13: @schedule.h13, h14: @schedule.h14, h15: @schedule.h15, h16: @schedule.h16, h17: @schedule.h17, h18: @schedule.h18, h19: @schedule.h19, h1: @schedule.h1, h20: @schedule.h20, h21: @schedule.h21, h22: @schedule.h22, h23: @schedule.h23, h24: @schedule.h24, h25: @schedule.h25, h26: @schedule.h26, h27: @schedule.h27, h28: @schedule.h28, h29: @schedule.h29, h2: @schedule.h2, h30: @schedule.h30, h31: @schedule.h31, h32: @schedule.h32, h33: @schedule.h33, h34: @schedule.h34, h35: @schedule.h35, h36: @schedule.h36, h37: @schedule.h37, h38: @schedule.h38, h39: @schedule.h39, h3: @schedule.h3, h40: @schedule.h40, h41: @schedule.h41, h42: @schedule.h42, h43: @schedule.h43, h44: @schedule.h44, h45: @schedule.h45, h46: @schedule.h46, h47: @schedule.h47, h4: @schedule.h4, h5: @schedule.h5, h6: @schedule.h6, h7: @schedule.h7, h8: @schedule.h8, h9: @schedule.h9 } }
    assert_redirected_to schedule_url(@schedule)
  end

  test "should destroy schedule" do
    assert_difference('Schedule.count', -1) do
      delete schedule_url(@schedule)
    end

    assert_redirected_to schedules_url
  end
end
