require 'test_helper'

class EventsControllerTest < ActionDispatch::IntegrationTest
  test "should get get_events" do
    get events_get_events_url
    assert_response :success
  end

end
