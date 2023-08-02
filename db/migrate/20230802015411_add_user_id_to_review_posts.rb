# frozen_string_literal: true

# This is the migration file for adding the user_id to the model
class AddUserIdToReviewPosts < ActiveRecord::Migration[7.0]
  def change
    add_reference :review_posts, :user, null: false, foreign_key: true
  end
end
