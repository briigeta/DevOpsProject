# frozen_string_literal: true

json.extract! review_post, :id, :title, :body, :rating, :created_at, :updated_at
json.url review_post_url(review_post, format: :json)
