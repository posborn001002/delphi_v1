require 'test_helper'

class JobProgressesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @job_progress = job_progresses(:one)
  end

  test "should get index" do
    get job_progresses_url
    assert_response :success
  end

  test "should get new" do
    get new_job_progress_url
    assert_response :success
  end

  test "should create job_progress" do
    assert_difference('JobProgress.count') do
      post job_progresses_url, params: { job_progress: { ActionResult_id: @job_progress.ActionResult_id, CustomerJob_id: @job_progress.CustomerJob_id, Lookup_id: @job_progress.Lookup_id } }
    end

    assert_redirected_to job_progress_url(JobProgress.last)
  end

  test "should show job_progress" do
    get job_progress_url(@job_progress)
    assert_response :success
  end

  test "should get edit" do
    get edit_job_progress_url(@job_progress)
    assert_response :success
  end

  test "should update job_progress" do
    patch job_progress_url(@job_progress), params: { job_progress: { ActionResult_id: @job_progress.ActionResult_id, CustomerJob_id: @job_progress.CustomerJob_id, Lookup_id: @job_progress.Lookup_id } }
    assert_redirected_to job_progress_url(@job_progress)
  end

  test "should destroy job_progress" do
    assert_difference('JobProgress.count', -1) do
      delete job_progress_url(@job_progress)
    end

    assert_redirected_to job_progresses_url
  end
end
