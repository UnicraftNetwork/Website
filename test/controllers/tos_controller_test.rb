require 'test_helper'

class TosControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get tos_index_url
    assert_response :success
  end

end
