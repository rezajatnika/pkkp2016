Rails.application.routes.draw do
  # Admin
  namespace :admin do
    root to: 'users#index'
    resources :users, :majors
  end

  # Root
  root 'home#index'

  # Resources
  resources :users, only: [:new, :create]

  get 'panitia', to: 'committees#new'
  get 'panitia/reg', to: 'committees#registered', as: 'registered'
end
