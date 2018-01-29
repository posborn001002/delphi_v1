require 'test_helper'

class ActionResultsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @action_result = action_results(:one)
  end

  test "should get index" do
    get action_results_url
    assert_response :success
  end

  test "should get new" do
    get new_action_result_url
    assert_response :success
  end

  test "should create action_result" do
    assert_difference('ActionResult.count') do
      post action_results_url, params: { action_result: { action: @action_result.action, number: @action_result.number, result: @action_result.result } }
    end

    assert_redirected_to action_result_url(ActionResult.last)
  end

  test "should show action_result" do
    get action_result_url(@action_result)
    assert_response :success
  end

  test "should get edit" do
    get edit_action_result_url(@action_result)
    assert_response :success
  end

  test "should update action_result" do
    patch action_result_url(@action_result), params: { action_result: { action: @action_result.action, number: @action_result.number, result: @action_result.result } }
    assert_redirected_to action_result_url(@action_result)
  end

  test "should destroy action_result" do
    assert_difference('ActionResult.count', -1) do
      delete action_result_url(@action_result)
    end

    assert_redirected_to action_results_url
  end
end
