# frozen_string_literal: true

Rails.application.routes.draw do
  # get 'visits/index'
  # get 'visits/show'
  # get 'visits/new'
  # get 'visits/edit'
  # get 'visits/create'
  # get 'visits/update'
  # get 'visits/destroy'
  # get 'patients/index'
  # get 'patients/show'
  # get 'patients/new'
  # get 'patients/edit'
  # get 'patients/create'
  # get 'patients/update'
  # get 'patients/destroy'
  # get 'doctors/index'
  # get 'doctors/show'
  # get 'doctors/new'
  # get 'doctors/edit'
  # get 'doctors/create'
  # get 'doctors/update'
  # get 'doctors/destroy'
  # get 'doctor/index'
  # get 'doctor/show'
  # get 'doctor/new'
  # get 'doctor/edit'
  # get 'doctor/create'
  # get 'doctor/update'
  # get 'doctor/destroy'

  root 'visits#index'
  resources :patients
  resources :doctors
  resources :visits
end
