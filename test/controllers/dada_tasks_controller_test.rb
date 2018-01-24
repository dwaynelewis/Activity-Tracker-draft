require 'test_helper'

class DadaTasksControllerTest < ActionDispatch::IntegrationTest
  setup do
    @dada_task = dada_tasks(:one)
  end

  test "should get index" do
    get dada_tasks_url
    assert_response :success
  end

  test "should get new" do
    get new_dada_task_url
    assert_response :success
  end

  test "should create dada_task" do
    assert_difference('DadaTask.count') do
      post dada_tasks_url, params: { dada_task: { Description: @dada_task.Description, Hours: @dada_task.Hours, Period: @dada_task.Period } }
    end

    assert_redirected_to dada_task_url(DadaTask.last)
  end

  test "should show dada_task" do
    get dada_task_url(@dada_task)
    assert_response :success
  end

  test "should get edit" do
    get edit_dada_task_url(@dada_task)
    assert_response :success
  end

  test "should update dada_task" do
    patch dada_task_url(@dada_task), params: { dada_task: { Description: @dada_task.Description, Hours: @dada_task.Hours, Period: @dada_task.Period } }
    assert_redirected_to dada_task_url(@dada_task)
  end

  test "should destroy dada_task" do
    assert_difference('DadaTask.count', -1) do
      delete dada_task_url(@dada_task)
    end

    assert_redirected_to dada_tasks_url
  end
end
