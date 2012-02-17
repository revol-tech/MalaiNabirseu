require 'test_helper'

class PagesControllerTest < ActionController::TestCase
  test "should get home" do
    get :home
    assert_response :success
  end

  test "should get about_us" do
    get :about_us
    assert_response :success
  end

  test "should get get_involved" do
    get :get_involved
    assert_response :success
  end

  test "should get events" do
    get :events
    assert_response :success
  end

  test "should get children" do
    get :children
    assert_response :success
  end

  test "should get who_we_are" do
    get :who_we_are
    assert_response :success
  end

  test "should get what_we_do" do
    get :what_we_do
    assert_response :success
  end

  test "should get how_to_help" do
    get :how_to_help
    assert_response :success
  end

  test "should get donate" do
    get :donate
    assert_response :success
  end

end
