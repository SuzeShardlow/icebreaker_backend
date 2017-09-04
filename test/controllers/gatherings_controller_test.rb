require 'test_helper'

class GatheringsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @gathering = gatherings(:one)
  end

  test "should get index" do
    get gatherings_url, as: :json
    assert_response :success
  end

  test "should create gathering" do
    assert_difference('Gathering.count') do
      post gatherings_url, params: { gathering: { duration: @gathering.duration, eventid: @gathering.eventid, groupname: @gathering.groupname, link: @gathering.link, name: @gathering.name, status: @gathering.status, time: @gathering.time } }, as: :json
    end

    assert_response 201
  end

  test "should show gathering" do
    get gathering_url(@gathering), as: :json
    assert_response :success
  end

  test "should update gathering" do
    patch gathering_url(@gathering), params: { gathering: { duration: @gathering.duration, eventid: @gathering.eventid, groupname: @gathering.groupname, link: @gathering.link, name: @gathering.name, status: @gathering.status, time: @gathering.time } }, as: :json
    assert_response 200
  end

  test "should destroy gathering" do
    assert_difference('Gathering.count', -1) do
      delete gathering_url(@gathering), as: :json
    end

    assert_response 204
  end
end
