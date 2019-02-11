require 'test_helper'

class UserTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end

  def setup
  	@user = users(:valid)
  	# @user.posts.create(text: 'sdsffssd')
	end

  test "should not save user without name" do
  	@user = User.new
  	assert_not @user.save, "Saved the user without a name"
	end

	test 'valid user' do
    @user = User.new(name: 'John', age: '22')
    assert @user.valid?
  end

  test 'invalid without name' do
    @user = User.new(age: '22')
    refute @user.valid?, 'user is valid without a name'
    assert_not_nil @user.errors[:name], 'no validation error for name present'
  end

  test 'invalid without age' do
    @user = User.new(name: 'John')
    refute @user.valid?
    assert_not_nil @user.errors[:age]
  end

  test '#posts' do
 		assert_equal 2, @user.posts.size
	end
end
