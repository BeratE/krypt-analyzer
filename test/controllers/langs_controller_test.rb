require 'test_helper'

class LangsControllerTest < ActionDispatch::IntegrationTest
  test "should get new" do
    get langs_new_url
    assert_response :success
  end

end
