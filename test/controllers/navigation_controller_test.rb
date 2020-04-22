require 'test_helper'

class NavigationControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get navigation_index_url
    assert_response :success
  end

end
