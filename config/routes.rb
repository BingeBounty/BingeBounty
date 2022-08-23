Rails.application.routes.draw do
  devise_for :users
  # get 'articles/index', to: 'articles#index'
  # get 'articles/show', to: 'articles#show'
  # get 'articles/new', to: 'articles#new'
  # post 'articles/new', to: 'articles#create'
  # post 'articles/', to: 'articles#create', as: :articles

  resources :articles
  root "articles#index"
end
