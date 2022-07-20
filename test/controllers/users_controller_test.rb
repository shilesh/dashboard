require "test_helper"

class UsersControllerTest < ActionDispatch::IntegrationTest
  setup do
    @user = users(:one)
  end

  test "should get index" do
    get users_url
    assert_response :success
  end

  test "should get new" do
    get new_user_url
    assert_response :success
  end

  test "should create user" do
    assert_difference("User.count") do
      post users_url, params: { user: { email: @user.email, type: @user.type, uuid: @user.uuid } }
    end

    assert_redirected_to user_url(User.last)
  end

  test "should show user" do
    get user_url(@user)
    assert_response :success
  end

  test "should get edit" do
    get edit_user_url(@user)
    assert_response :success
  end

  test "should update user" do
    patch user_url(@user), params: { user: { email: @user.email, type: @user.type, uuid: @user.uuid } }
    assert_redirected_to user_url(@user)
  end

  test "should destroy user" do
    assert_difference("User.count", -1) do
      delete user_url(@user)
    end

    assert_redirected_to users_url
  end

  test "show users using url" do
    get user_url(User.first), headers: { "HTTP_REFERER" => "http://localhost:3000/users" }
    assert_response :success
  end

  test "create user using url" do
    post users_path, params: { user: { email: "Myemail4", type: "", uuid: "UUID4" } }, as: :json
    assert_response :success
  end

end
