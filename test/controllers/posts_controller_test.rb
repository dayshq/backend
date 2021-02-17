require "test_helper"

class PostsControllerTest < ActionDispatch::IntegrationTest

  test "should get index" do
    get posts_url, as: :json
    assert_response :success
  end

  test "should create post" do
    post posts_url, params: { title: "Hello", text: "Lorem Ipsum", like: 0}, as: :json
    assert_response 200
  end

  test "should show post" do
    @post = posts(:one)
    get posts_url(@post), as: :json
    assert_response :success
  end
end
