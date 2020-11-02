Rails.application.routes.draw do
  
  devise_for :users
  get 'details/show'
  get 'listings/show'
  get 'homes/show', to:"homes#show"
  get 'homes/index', to:"homes#index"
  get 'aboutus/index', to:"aboutus#index"
  get 'contactus/index', to: "contactus#index"
  get 'contactus/new', to: "contactus#new"

   get 'details/search', to:"details#search"

  devise_for :admin_users, ActiveAdmin::Devise.config
  ActiveAdmin.routes(self)
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  root 'homes#index'

  resources :listings do
    resources :comments
  end

  resources :comments do
    resources :comments
  end

end
