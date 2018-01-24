require 'test_helper'

class YasTasksControllerTest < ActionDispatch::IntegrationTest
  setup do
    @yas_task = yas_tasks(:one)
  end

  test "should get index" do
    get yas_tasks_url
    assert_response :success
  end

  test "should get new" do
    get new_yas_task_url
    assert_response :success
  end

  test "should create yas_task" do
    assert_difference('YasTask.count') do
      post yas_tasks_url, params: { yas_task: { Description: @yas_task.Description, Hours: @yas_task.Hours, Period: @yas_task.Period } }
    end

    assert_redirected_to yas_task_url(YasTask.last)
  end

  test "should show yas_task" do
    get yas_task_url(@yas_task)
    assert_response :success
  end

  test "should get edit" do
    get edit_yas_task_url(@yas_task)
    assert_response :success
  end

  test "should update yas_task" do
    patch yas_task_url(@yas_task), params: { yas_task: { Description: @yas_task.Description, Hours: @yas_task.Hours, Period: @yas_task.Period } }
    assert_redirected_to yas_task_url(@yas_task)
  end

  test "should destroy yas_task" do
    assert_difference('YasTask.count', -1) do
      delete yas_task_url(@yas_task)
    end

    assert_redirected_to yas_tasks_url
  end
end
