require 'test_helper'

class TelephoneDirectoryControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get telephone_directory_index_url
    assert_response :success
  end

end
