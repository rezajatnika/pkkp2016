Rails.application.routes.draw do
  # Admin
  namespace :admin do
    root to: 'users#index'
    resources :users, :majors, :posts, :participants, :departements
  end

  # Root
  root 'home#index'

  # Resources
  resources :users, only: [:new, :create]
  resources :participants, only: [:new, :create]

  get 'panitia', to: 'committees#new'
  get 'peserta', to: 'participants#new'
  get 'peserta/reg', to: 'participants#registered'
end
