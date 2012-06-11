require 'test_helper'

class DonatesControllerTest < ActionController::TestCase
  test "should get index" do
    get :index
    assert_response :success
  end

  test "should get deliver" do
    get :deliver
    assert_response :success
  end

end
