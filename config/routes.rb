Rails.application.routes.draw do
  
  devise_for :users
  get 'homes/show', to:"homes#show"
  get 'homes/index', to:"homes#index"

  get 'aboutus/index', to:"aboutus#index"
  
  get 'contactus/index', to: "contactus#index"
  get 'contactus/new', to: "contactus#new"

   get 'listings/search', to:"listings#search"
   get 'listings/show', to:"listings#show"
   get 'listings/new', to:"listings#new"
   post 'listings/create', to:"listings#create"

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
