require 'test_helper'

class InvoiceListControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get invoice_list_index_url
    assert_response :success
  end

end
