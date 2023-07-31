# frozen_string_literal: true

# This is our migration file for our review posts.
class CreateReviewPosts < ActiveRecord::Migration[7.0]
  def change
    create_table :review_posts do |t|
      t.string :title
      t.text :body
      t.integer :rating

      t.timestamps
    end
  end
end
