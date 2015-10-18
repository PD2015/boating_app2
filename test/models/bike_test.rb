require 'test_helper'

class BikeTest < ActiveSupport::TestCase
  
  def setup
    @user = users(:liz)
    # This code is not idiomatically correct.
    @bike = @user.bike.build(name: "billy", manufacturing_no: "xxx", user_id: @user.id)
  end

  test "user id should be present" do
    @bike.user_id = nil
    assert_not @bike.valid?
  end

test "manufacturing_no should be present" do
    @bike.content = "   "
    assert_not @bike.valid?
  end

  test "manufacturing_no should be at most 10 characters" do
    @bike.content = "a" * 10
    assert_not @bike.valid?
  end
end
