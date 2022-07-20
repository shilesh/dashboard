require "test_helper"

class UserTest < ActiveSupport::TestCase
  test "user eamil match" do
    assert_equal "MyString", users(:one).email
  end
end
