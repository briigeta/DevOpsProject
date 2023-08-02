# frozen_string_literal: true

# This is the ReviewPost model.
class ReviewPost < ApplicationRecord
  belongs_to :user
  validates :title, presence: true
  validates :body, presence: true
  validates :rating, presence: true
end
