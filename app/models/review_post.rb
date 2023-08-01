# frozen_string_literal: true

# This is the ReviewPost model.
class ReviewPost < ApplicationRecord
  validates :title, presence: true
end
