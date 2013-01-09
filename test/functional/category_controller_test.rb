require 'test_helper'

class CategoryControllerTest < ActionController::TestCase
  test "should get name" do
    get :name
    assert_response :success
  end

end
