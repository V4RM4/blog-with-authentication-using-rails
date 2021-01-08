Rails.application.routes.draw do
  resources :articles
  root 'articles#index'
  get 'signup', to: 'users#new'
  resources :users, except: [:new]
end
