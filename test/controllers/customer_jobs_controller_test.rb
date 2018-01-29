require 'test_helper'

class CustomerJobsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @customer_job = customer_jobs(:one)
  end

  test "should get index" do
    get customer_jobs_url
    assert_response :success
  end

  test "should get new" do
    get new_customer_job_url
    assert_response :success
  end

  test "should create customer_job" do
    assert_difference('CustomerJob.count') do
      post customer_jobs_url, params: { customer_job: { description: @customer_job.description, job_reference: @customer_job.job_reference, name: @customer_job.name, status: @customer_job.status } }
    end

    assert_redirected_to customer_job_url(CustomerJob.last)
  end

  test "should show customer_job" do
    get customer_job_url(@customer_job)
    assert_response :success
  end

  test "should get edit" do
    get edit_customer_job_url(@customer_job)
    assert_response :success
  end

  test "should update customer_job" do
    patch customer_job_url(@customer_job), params: { customer_job: { description: @customer_job.description, job_reference: @customer_job.job_reference, name: @customer_job.name, status: @customer_job.status } }
    assert_redirected_to customer_job_url(@customer_job)
  end

  test "should destroy customer_job" do
    assert_difference('CustomerJob.count', -1) do
      delete customer_job_url(@customer_job)
    end

    assert_redirected_to customer_jobs_url
  end
end
