require 'test_helper'

class TownsControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get towns_index_url
    assert_response :success
  end

end
