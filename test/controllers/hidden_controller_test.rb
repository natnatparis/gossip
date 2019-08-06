require 'test_helper'

class HiddenControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get hidden_index_url
    assert_response :success
  end

end
