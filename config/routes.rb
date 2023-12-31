Rails.application.routes.draw do
  get 'passwordresets/new'
  get 'passwordresets/edit'
  get 'sessions/new'
  get 'user/new'
  get "static_pages/home"
  get "static_pages/help"
  get "static_pages/about"
  get "static_pages/contact"
  get "/signup", to: "users#new"
  get "login", to: "sessions#new"
  post "login", to: "sessions#create"
  delete "logout", to: "sessions#destroy"

  resources :microposts,          only: [:create, :destroy]
  resources :users
  resources :account_activations, only: [:edit]
  resources :password_resets,     only: [:new, :create, :edit, :update]
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
  # chapter_2
  # root "users#index"
  # chapter_3
  root "static_pages#home"
end
