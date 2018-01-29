require 'test_helper'

class PainObservationsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @pain_observation = pain_observations(:one)
  end

  test "should get index" do
    get pain_observations_url
    assert_response :success
  end

  test "should get new" do
    get new_pain_observation_url
    assert_response :success
  end

  test "should create pain_observation" do
    assert_difference('PainObservation.count') do
      post pain_observations_url, params: { pain_observation: { JobProgress_id: @pain_observation.JobProgress_id, PointOfPain_id: @pain_observation.PointOfPain_id, pass_fail: @pain_observation.pass_fail } }
    end

    assert_redirected_to pain_observation_url(PainObservation.last)
  end

  test "should show pain_observation" do
    get pain_observation_url(@pain_observation)
    assert_response :success
  end

  test "should get edit" do
    get edit_pain_observation_url(@pain_observation)
    assert_response :success
  end

  test "should update pain_observation" do
    patch pain_observation_url(@pain_observation), params: { pain_observation: { JobProgress_id: @pain_observation.JobProgress_id, PointOfPain_id: @pain_observation.PointOfPain_id, pass_fail: @pain_observation.pass_fail } }
    assert_redirected_to pain_observation_url(@pain_observation)
  end

  test "should destroy pain_observation" do
    assert_difference('PainObservation.count', -1) do
      delete pain_observation_url(@pain_observation)
    end

    assert_redirected_to pain_observations_url
  end
end
