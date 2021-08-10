Rails.application.routes.draw do
  get 'sessions/new'
  resources :blogs
  resources :users
  root 'blogs#index'
end
