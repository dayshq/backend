require "test_helper"

class CommentsControllerTest < ActionDispatch::IntegrationTest
  # test "the truth" do
  #   assert true
  # end

  test "should create comment" do
    post post_comments_url(posts(:one)), params: { comment: { author_id: 1 } }, as: :json
    assert_response 422
  end

  test "should get comment by post" do
    get post_comments_url(posts(:one)), as: :json
    assert_response 200
  end

  test "should update comment" do
    patch post_comment_url(posts(:one),comments(:one)), params: {  comment: {} }, as: :json
    assert_response 422
  end

  test "should destroy comment" do
    delete post_comment_url(posts(:one), comments(:one)), as: :json
    assert_response 204
  end
end
