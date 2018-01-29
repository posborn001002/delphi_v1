require 'test_helper'

class PointOfPainsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @point_of_pain = point_of_pains(:one)
  end

  test "should get index" do
    get point_of_pains_url
    assert_response :success
  end

  test "should get new" do
    get new_point_of_pain_url
    assert_response :success
  end

  test "should create point_of_pain" do
    assert_difference('PointOfPain.count') do
      post point_of_pains_url, params: { point_of_pain: { PTWorkshop_id: @point_of_pain.PTWorkshop_id, description: @point_of_pain.description } }
    end

    assert_redirected_to point_of_pain_url(PointOfPain.last)
  end

  test "should show point_of_pain" do
    get point_of_pain_url(@point_of_pain)
    assert_response :success
  end

  test "should get edit" do
    get edit_point_of_pain_url(@point_of_pain)
    assert_response :success
  end

  test "should update point_of_pain" do
    patch point_of_pain_url(@point_of_pain), params: { point_of_pain: { PTWorkshop_id: @point_of_pain.PTWorkshop_id, description: @point_of_pain.description } }
    assert_redirected_to point_of_pain_url(@point_of_pain)
  end

  test "should destroy point_of_pain" do
    assert_difference('PointOfPain.count', -1) do
      delete point_of_pain_url(@point_of_pain)
    end

    assert_redirected_to point_of_pains_url
  end
end
