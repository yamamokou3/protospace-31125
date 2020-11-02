require 'test_helper'

class PhototypeControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get phototype_index_url
    assert_response :success
  end

end
