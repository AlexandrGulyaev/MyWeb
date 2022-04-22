Rails.application.routes.draw do
  resources :values
  resources :themes
  resources :images
  resources :users
  get 'main/index'
  get 'main/help'
  get 'main/contacts'
  get 'main/about'
  #root 'main#index'
  
  root 'work#index'
  get 'work/index'
  get 'work/choose_theme'
  get 'work/display_theme'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  # work
  match 'work',             to: 'work#index',             via: 'get'
  match 'choose_image',     to: 'work#choose_image',      via: :get
  match 'choose_theme',     to: 'work#choose_theme',      via: :get
  match 'display_theme',    to: 'work#display_theme',     via: :post

  resources :sessions, only: [:new, :create, :destroy]
  match 'signin',           to: 'sessions#new',           via: 'get'
  match 'signout',          to: 'sessions#destroy',       via: 'delete'

end
