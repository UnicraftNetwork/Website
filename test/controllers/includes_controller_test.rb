require 'test_helper'

class IncludesControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get includes_index_url
    assert_response :success
  end

end
