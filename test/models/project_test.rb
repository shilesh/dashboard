require "test_helper"

class ProjectTest < ActiveSupport::TestCase
  test "project count" do
    assert_equal 3, projects.count
  end

  test "project title match" do
    assert_equal "MyString", projects(:one).title
  end

  test "finding a project which does not exist" do
    assert_raise(StandardError) { projects(:four) }
  end
end
