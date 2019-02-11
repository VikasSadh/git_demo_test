require 'test_helper'

class PostTest < ActiveSupport::TestCase

  # test "the truth" do
  #   assert true
  # end

  def setup
  	@post = posts(:one)
  	# @user.posts.create(text: 'sdsffssd')
	end

  test "create post" do
    post = Post.new(text: "wrqrqwrqwr")
    assert_not post.save
  end

  # test "associations" do
  #   should belong_to :user
  # end

  test "post_count" do
    assert_equal 2, Post.count
  end

  test 'call function' do 
  	assert @post.perform_task
  end
end
