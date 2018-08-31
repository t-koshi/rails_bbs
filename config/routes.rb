Rails.application.routes.draw do
  root 'application#index'

  devise_for :users
  resources :messages
  namespace :me do
    resource :profile, only: %i(show edit update)
  end
end
