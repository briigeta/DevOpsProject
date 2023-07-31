# frozen_string_literal: true

require 'test_helper'

class ReviewPostsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @review_post = review_posts(:one)
  end

  test 'should get index' do
    get review_posts_url
    assert_response :success
  end

  test 'should get new' do
    get new_review_post_url
    assert_response :success
  end

  test 'should create review_post' do
    assert_difference('ReviewPost.count') do
      post review_posts_url, params: { review_post: { body: @review_post.body, rating: @review_post.rating, title: @review_post.title } }
    end

    assert_redirected_to review_post_url(ReviewPost.last)
  end

  test 'should show review_post' do
    get review_post_url(@review_post)
    assert_response :success
  end

  test 'should get edit' do
    get edit_review_post_url(@review_post)
    assert_response :success
  end

  test 'should update review_post' do
    patch review_post_url(@review_post), params: { review_post: { body: @review_post.body, rating: @review_post.rating, title: @review_post.title } }
    assert_redirected_to review_post_url(@review_post)
  end

  test 'should destroy review_post' do
    assert_difference('ReviewPost.count', -1) do
      delete review_post_url(@review_post)
    end

    assert_redirected_to review_posts_url
  end
end
