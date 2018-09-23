# frozen_string_literal: true

Rails.application.routes.draw do
  root 'static_pages#home'
  # get 'static_pages/contact'
  get '/contact',    to: 'static_pages#contact', as: 'contact'

  resources :patients
  resources :doctors
  resources :visits
end
