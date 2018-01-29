require 'test_helper'

class PoPObservationsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @po_p_observation = po_p_observations(:one)
  end

  test "should get index" do
    get po_p_observations_url
    assert_response :success
  end

  test "should get new" do
    get new_po_p_observation_url
    assert_response :success
  end

  test "should create po_p_observation" do
    assert_difference('PoPObservation.count') do
      post po_p_observations_url, params: { po_p_observation: { DateLookup_id: @po_p_observation.DateLookup_id, pass_fail: @po_p_observation.pass_fail } }
    end

    assert_redirected_to po_p_observation_url(PoPObservation.last)
  end

  test "should show po_p_observation" do
    get po_p_observation_url(@po_p_observation)
    assert_response :success
  end

  test "should get edit" do
    get edit_po_p_observation_url(@po_p_observation)
    assert_response :success
  end

  test "should update po_p_observation" do
    patch po_p_observation_url(@po_p_observation), params: { po_p_observation: { DateLookup_id: @po_p_observation.DateLookup_id, pass_fail: @po_p_observation.pass_fail } }
    assert_redirected_to po_p_observation_url(@po_p_observation)
  end

  test "should destroy po_p_observation" do
    assert_difference('PoPObservation.count', -1) do
      delete po_p_observation_url(@po_p_observation)
    end

    assert_redirected_to po_p_observations_url
  end
end
