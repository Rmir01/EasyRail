require "test_helper"

class TrainsControllerTest < ActionDispatch::IntegrationTest
  test "should get search" do
    get trains_search_url
    assert_response :success
  end
end
