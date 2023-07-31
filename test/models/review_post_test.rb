# frozen_string_literal: true

require 'test_helper'

class ReviewPostTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end

test "should not save review post without title" do
  review_post = ReviewPost.new
    assert_not review_post.save, "Saved review post without title"
end

test "should save review post with title" do
  review_post = ReviewPost.new(title: "test")
  assert review_post.save, "This is the title"
end

end
