require 'test_helper'

class NewsEventsControllerTest < ActionController::TestCase
  test "should get news_details" do
    get :news_details
    assert_response :success
  end

  test "should get events_details" do
    get :events_details
    assert_response :success
  end

end
