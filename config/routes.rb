Rails.application.routes.draw do
  devise_for :users
  get 'articles/index', to: 'articles#index'
  get 'articles/show', to: 'articles#show'
  get 'articles/new', to: 'articles#new'
  post 'articles/new', to: 'articles#create'
  post 'articles/', to: 'articles#create', as: :articles

  # resources :articles, only: [:new, :create]

  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  root "articles#index"
end
