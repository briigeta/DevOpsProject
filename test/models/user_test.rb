# frozen_string_literal: true

require 'test_helper'

class UserTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end

  test 'should be valid' do
    user = User.new(name: '<NAME>', email: '<EMAIL>', password: '<PASSWORD>')
    assert user.valid?
  end

  test 'should not be saved without a password' do
    @user.password = nil
    assert_not @user.save
  end

  test 'should not be saved without an email' do
    @user.email = nil
    assert_not @user.save
  end

  test 'should not save user with invalid email format' do
    @user.email = 'invalid_email'
    assert_not @user.save, 'Saved user with invalid email format'
  end

  test 'should save user with valid email and password' do
    user = User.new(email: 'test@example.com', password: 'password')
    assert user.save, 'Could not save user with valid email and password'
  end
end
