# frozen_string_literal: true

# This is the User model class.
class User < ApplicationRecord
  has_many :review_posts
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
end
