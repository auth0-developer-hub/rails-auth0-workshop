# frozen_string_literal: true

Rails.application.routes.draw do
  root 'home#index'

  get 'profile', to: 'users#profile'

  get 'protected', to: 'messages#protected'
  get 'public', to: 'messages#public'
  get 'admin', to: 'messages#admin'

end
