Rails.application.routes.draw do
  root 'application#index'

  devise_for :users
  resources :messages, only: %i(index edit new update destroy create)
  namespace :me do
    resource :profile, only: %i(show edit update)
  end
end
