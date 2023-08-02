# frozen_string_literal: true

Rails.application.routes.draw do
  root to: 'landing_page#index'
  devise_for :users
  devise_scope :user do
    get 'users/sign_out', to: 'devise/sessions#destroy'
    delete '/cancel_account', to: 'registrations#cancel_account', as: 'cancel_account'
  end
  resources :review_posts
  get '/home', to: 'review_posts#index'
end
