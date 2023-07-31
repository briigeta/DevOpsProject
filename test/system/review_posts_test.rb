# frozen_string_literal: true

require 'application_system_test_case'

class ReviewPostsTest < ApplicationSystemTestCase
  setup do
    @review_post = review_posts(:one)
  end

  test 'visiting the index' do
    visit review_posts_url
    assert_selector 'h1', text: 'Review posts'
  end

  test 'should create review post' do
    visit review_posts_url
    click_on 'New review post'

    fill_in 'Body', with: @review_post.body
    fill_in 'Rating', with: @review_post.rating
    fill_in 'Title', with: @review_post.title
    click_on 'Create Review post'

    assert_text 'Review post was successfully created'
    click_on 'Back'
  end

  test 'should update Review post' do
    visit review_post_url(@review_post)
    click_on 'Edit this review post', match: :first

    fill_in 'Body', with: @review_post.body
    fill_in 'Rating', with: @review_post.rating
    fill_in 'Title', with: @review_post.title
    click_on 'Update Review post'

    assert_text 'Review post was successfully updated'
    click_on 'Back'
  end

  test 'should destroy Review post' do
    visit review_post_url(@review_post)
    click_on 'Destroy this review post', match: :first

    assert_text 'Review post was successfully destroyed'
  end
end
