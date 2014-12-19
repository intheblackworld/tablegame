require 'test_helper'

class WelcomesControllerTest < ActionController::TestCase
  test "should get address:string" do
    get :address:string
    assert_response :success
  end

  test "should get description:text" do
    get :description:text
    assert_response :success
  end

  test "should get title:string" do
    get :title:string
    assert_response :success
  end

end
