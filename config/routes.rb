Rails.application.routes.draw do
  get 'about_us/index'
  get 'listings/show'
  get 'homes/show', to:"homes#show"
  get 'homes/index', to:"homes#index"
  get 'contact_us/index', to:"contact_us#index"
  get 'about_us/index', to:"about_us#index"
  devise_for :admin_users, ActiveAdmin::Devise.config
  ActiveAdmin.routes(self)
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  root 'homes#index'
end
