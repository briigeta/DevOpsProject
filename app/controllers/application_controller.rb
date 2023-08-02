# frozen_string_literal: true

# this is the controller for the application
class ApplicationController < ActionController::Base
  def after_sign_in_path_for(_resource)
    home_path
  end

  def after_sign_up_path_for(_resource)
    home_path
  end
end
