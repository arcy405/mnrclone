Rails.application.routes.draw do

  get 'errors/not_found'
  get 'errors/internal_server_error'
  get 'telephone_directory/index'
  mount RailsAdmin::Engine => '/admins', as: 'rails_admin'
  devise_for :users, :controllers => { :omniauth_callbacks => "users/omniauth_callbacks" }

  get 'homes/show', to:"homes#show"
  get 'homes/index', to:"homes#index"


  get 'aboutus/index', to:"aboutus#index"
  
  get 'contactus/index', to: "contactus#index"
  get 'contactus/new', to: "contactus#new"

   get 'listings/search', to:"listings#search"
   get 'listings/show', to:"listings#show"
   get 'listings/new', to:"listings#new"
   post 'listings/new', to:"listings#new"
   post 'listings/create', to:"listings#create"

   resources :bus_departures
   resources :models
   resources :reviews
   resources :reviews
   resources :educational_notes, only: [:index]
   resources :gamifications, only: [:index]
   get 'educational_notes/notes_index'
   get 'educational_notes/notes_show'

   #routes for arcy#
   resources :donors
   resources :vacancies
   resources :pet_adoptions
   #################



   get 'listings/sucess', to: "listings#sucess"

   resources :agents, only: [:index]

  devise_for :admin_users, ActiveAdmin::Devise.config
  ActiveAdmin.routes(self)
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  root 'homes#index'
  resources :realestates
  resources :tourists
 

  resources :listings do
      resources :reviews
  end

  match "/404", :to => "errors#not_found", :via => :all
  match "/500", :to => "errors#internal_server_error", :via => :all

  mount SimpleDiscussion::Engine => "/forum"

end
