# frozen_string_literal: true

require 'test_helper'

class ReviewPostTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end

  test 'should not save review post without title' do
    review_post = ReviewPost.new
    assert_not review_post.save, 'Saved review post without title'
  end

  test 'should save review post with title' do
    review_post = ReviewPost.new(title: 'test')
    assert review_post.save, 'This is the title'
  end

  test 'title should be unique' do
    review_post = ReviewPost.new(title: 'test')
    review_post.save
    assert_not review_post.save, 'This is the title'
  end

  test 'should not save review post without content' do
    review_post = ReviewPost.new
    assert_not review_post.save, 'Saved review post without content'
  end

  test 'should save review post with content' do
    review_post = ReviewPost.new(content: 'test')
    assert review_post.save, 'This is the content'
  end

  test 'content should be unique' do
    review_post = ReviewPost.new(content: 'test')
    review_post.save
    assert_not review_post.save, 'This is the content'
  end

  test 'should not save review post without rating' do
    review_post = ReviewPost.new
    assert_not review_post.save, 'Saved review post without rating'
  end

  test 'should save review post with rating' do
    review_post = ReviewPost.new(rating: 'test')
    assert review_post.save, 'This is the rating'
  end
end
