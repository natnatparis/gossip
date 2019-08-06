require 'test_helper'

class EachgossipControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get eachgossip_index_url
    assert_response :success
  end

end
