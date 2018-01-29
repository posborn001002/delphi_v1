require 'test_helper'

class CustomerJobActionResultsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @customer_job_action_result = customer_job_action_results(:one)
  end

  test "should get index" do
    get customer_job_action_results_index_url
    assert_response :success
  end

  test "should get new" do
    get new_customer_job_action_result_url
    assert_response :success
  end

  test "should create customer_job_action_result" do
    assert_difference('CustomerJobActionResults.count') do
      post customer_job_action_results_index_url, params: { customer_job_action_result: { ActionResults_id: @customer_job_action_result.ActionResults_id, CustomerJob_id: @customer_job_action_result.CustomerJob_id } }
    end

    assert_redirected_to customer_job_action_result_url(CustomerJobActionResults.last)
  end

  test "should show customer_job_action_result" do
    get customer_job_action_result_url(@customer_job_action_result)
    assert_response :success
  end

  test "should get edit" do
    get edit_customer_job_action_result_url(@customer_job_action_result)
    assert_response :success
  end

  test "should update customer_job_action_result" do
    patch customer_job_action_result_url(@customer_job_action_result), params: { customer_job_action_result: { ActionResults_id: @customer_job_action_result.ActionResults_id, CustomerJob_id: @customer_job_action_result.CustomerJob_id } }
    assert_redirected_to customer_job_action_result_url(@customer_job_action_result)
  end

  test "should destroy customer_job_action_result" do
    assert_difference('CustomerJobActionResults.count', -1) do
      delete customer_job_action_result_url(@customer_job_action_result)
    end

    assert_redirected_to customer_job_action_results_index_url
  end
end
