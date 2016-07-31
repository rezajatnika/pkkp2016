Rails.application.routes.draw do
  # Admin
  namespace :admin do
    root to: 'users#index'
    resources :users
  end

  # Root
  root 'home#index'

  # Resources
  resources :users

  get 'pendaftaran', to: 'home#result', as: 'result'
end
