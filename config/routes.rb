# frozen_string_literal: true

Rails.application.routes.draw do
  root 'pages#home'
  get '/about', to: 'pages#about'
  resources :articles
end
