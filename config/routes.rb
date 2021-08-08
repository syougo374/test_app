Rails.application.routes.draw do
  get 'blogs/index'
  get 'blogs/show'
  get 'blogs/edit'
  get 'blogs/new'
  get 'blogs/_form'
  get 'users/index'
  get 'users/show'
  get 'users/_form'
  get 'users/edit'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
