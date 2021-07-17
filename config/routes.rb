# frozen_string_literal: true

Rails.application.routes.draw do
  root 'pages#home'
  get '/about', to: 'pages#about'
  get '/contact', to: 'pages#contact'
  resources :articles, only: [:show]
end
