require 'test_helper'

class RulesControllerTest < ActionDispatch::IntegrationTest
  test "should get es" do
    get rules_es_url
    assert_response :success
  end

end
