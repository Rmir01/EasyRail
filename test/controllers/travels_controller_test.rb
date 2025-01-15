require "test_helper"

class TrainsControllerTest < ActionDispatch::IntegrationTest
  test "should get search" do
    get travels_search_path
    assert_response :success
  end
end
