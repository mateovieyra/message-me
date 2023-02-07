require "test_helper"

class UserTest < ActiveSupport::TestCase
  def setup
    @user = User.new(username: "mateo", password: "123")
  end

  test "username should be present" do 
    @user.username = " "
    assert_not @user.valid?
  end

  test "username should not be too short" do 
    @user.username = "aa"
    assert_not @user.valid?
  end

  test "username should not be too long" do 
    @user.username = "a" * 16
    assert_not @user.valid?
  end

  test "username should be valid" do 
    assert @user.valid?
  end
end
