Rails.application.routes.draw do
  # Admin
  namespace :admin do
    root to: 'users#index'
    resources :users, :majors
  end

  # Root
  root 'home#index'

  # Resources
  resources :users
  resources :majors

  get 'pendaftaran', to: 'home#result', as: 'result'
end
