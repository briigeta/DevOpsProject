# frozen_string_literal: true

json.array! @review_posts, partial: 'review_posts/review_post', as: :review_post
