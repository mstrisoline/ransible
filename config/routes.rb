Ransible::Application.routes.draw do
  resources :plays

  resources :roles

  resources :host_vars

  resources :groups

  resources :hosts

  resource :users
  resource :sessions
  get 'login', to: 'sessions#new', as: 'login'
  post 'logout', to: 'sessions#destroy', as: 'logout' 
  root to: 'hosts#index'
end
