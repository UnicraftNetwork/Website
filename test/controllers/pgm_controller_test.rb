require 'test_helper'

class PgmControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get pgm_index_url
    assert_response :success
  end

end
