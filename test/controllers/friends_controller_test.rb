require "test_helper"

class FriendsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @person = person(:one) 
    @friend = friends(:one)
  end

  test "should get index" do
    get people_friends_url(@person), as: :json
    assert_response :success
  end

  test "should create friend" do
    assert_difference('Friend.count') do
      post people_friends_url(@person), params: { friend: {  } }, as: :json
    end

    assert_response 201
  end

  test "should show friend" do
    get people_friend_url(@person,@friend), as: :json
    assert_response :success
  end

  test "should update friend" do
    patch people_friend_url(@person,@friend), params: { friend: {  } }, as: :json
    assert_response 200
  end

  test "should destroy friend" do
    assert_difference('Friend.count', -1) do
      delete people_friend_url(@person,@friend), as: :json
    end

    assert_response 204
  end
end
