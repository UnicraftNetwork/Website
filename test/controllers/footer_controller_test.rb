require 'test_helper'

class FooterControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get footer_index_url
    assert_response :success
  end

end
