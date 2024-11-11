require "test_helper"

class ExpendsControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get expends_index_url
    assert_response :success
  end
end
