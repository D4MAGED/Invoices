require 'test_helper'

class StatementControllerTest < ActionDispatch::IntegrationTest
  test "should get show" do
    get statement_show_url
    assert_response :success
  end

end
