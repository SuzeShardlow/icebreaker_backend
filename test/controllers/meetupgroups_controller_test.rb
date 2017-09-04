require 'test_helper'

class MeetupgroupsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @meetupgroup = meetupgroups(:one)
  end

  test "should get index" do
    get meetupgroups_url, as: :json
    assert_response :success
  end

  test "should create meetupgroup" do
    assert_difference('Meetupgroup.count') do
      post meetupgroups_url, params: { meetupgroup: { name: @meetupgroup.name, url: @meetupgroup.url } }, as: :json
    end

    assert_response 201
  end

  test "should show meetupgroup" do
    get meetupgroup_url(@meetupgroup), as: :json
    assert_response :success
  end

  test "should update meetupgroup" do
    patch meetupgroup_url(@meetupgroup), params: { meetupgroup: { name: @meetupgroup.name, url: @meetupgroup.url } }, as: :json
    assert_response 200
  end

  test "should destroy meetupgroup" do
    assert_difference('Meetupgroup.count', -1) do
      delete meetupgroup_url(@meetupgroup), as: :json
    end

    assert_response 204
  end
end
