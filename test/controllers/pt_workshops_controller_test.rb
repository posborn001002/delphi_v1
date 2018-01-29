require 'test_helper'

class PtWorkshopsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @pt_workshop = pt_workshops(:one)
  end

  test "should get index" do
    get pt_workshops_url
    assert_response :success
  end

  test "should get new" do
    get new_pt_workshop_url
    assert_response :success
  end

  test "should create pt_workshop" do
    assert_difference('PtWorkshop.count') do
      post pt_workshops_url, params: { pt_workshop: { Person_id: @pt_workshop.Person_id, date: @pt_workshop.date } }
    end

    assert_redirected_to pt_workshop_url(PtWorkshop.last)
  end

  test "should show pt_workshop" do
    get pt_workshop_url(@pt_workshop)
    assert_response :success
  end

  test "should get edit" do
    get edit_pt_workshop_url(@pt_workshop)
    assert_response :success
  end

  test "should update pt_workshop" do
    patch pt_workshop_url(@pt_workshop), params: { pt_workshop: { Person_id: @pt_workshop.Person_id, date: @pt_workshop.date } }
    assert_redirected_to pt_workshop_url(@pt_workshop)
  end

  test "should destroy pt_workshop" do
    assert_difference('PtWorkshop.count', -1) do
      delete pt_workshop_url(@pt_workshop)
    end

    assert_redirected_to pt_workshops_url
  end
end
