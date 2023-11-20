# frozen_string_literal: true

Rails.application.routes.draw do
  root 'home#index'

  get 'profile', to: 'users#profile'

end
