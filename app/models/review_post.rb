# frozen_string_literal: true

class ReviewPost < ApplicationRecord
    validates :title, presence: true
end
