require 'test_helper'

class ToeTagsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @toe_tag = toe_tags(:one)
  end

  test "should get index" do
    get toe_tags_url
    assert_response :success
  end

  test "should get new" do
    get new_toe_tag_url
    assert_response :success
  end

  test "should create toe_tag" do
    assert_difference('ToeTag.count') do
      post toe_tags_url, params: { toe_tag: { Person_id: @toe_tag.Person_id, priority: @toe_tag.priority } }
    end

    assert_redirected_to toe_tag_url(ToeTag.last)
  end

  test "should show toe_tag" do
    get toe_tag_url(@toe_tag)
    assert_response :success
  end

  test "should get edit" do
    get edit_toe_tag_url(@toe_tag)
    assert_response :success
  end

  test "should update toe_tag" do
    patch toe_tag_url(@toe_tag), params: { toe_tag: { Person_id: @toe_tag.Person_id, priority: @toe_tag.priority } }
    assert_redirected_to toe_tag_url(@toe_tag)
  end

  test "should destroy toe_tag" do
    assert_difference('ToeTag.count', -1) do
      delete toe_tag_url(@toe_tag)
    end

    assert_redirected_to toe_tags_url
  end
end
