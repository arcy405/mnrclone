require 'test_helper'

class RealestatesControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get realestates_index_url
    assert_response :success
  end

end
