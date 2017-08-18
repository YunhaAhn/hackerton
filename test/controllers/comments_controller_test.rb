require 'test_helper'

class CommentsControllerTest < ActionController::TestCase
  test "should get index" do
    get :index
    assert_response :success
  end

  test "should get model" do
    get :model
    assert_response :success
  end

  test "should get helper" do
    get :helper
    assert_response :success
  end

end
