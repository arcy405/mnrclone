Rails.application.routes.draw do

  get 'errors/not_found'
  get 'errors/internal_server_error'
  get 'telephone_directory/index'

  mount RailsAdmin::Engine => '/admins', as: 'rails_admin'
  
  devise_for :users, :controllers => { :omniauth_callbacks => "users/omniauth_callbacks" }

  get 'homes/show', to:"homes#show"
  get 'homes/index', to:"homes#index"
  get 'homes/tool', to:"homes#tool"

  get 'set_mylanguage/np', to:"set_mylanguage#np"
  get 'set_mylanguage/en', to:"set_mylanguage#en"


  get 'aboutus/index', to:"aboutus#index"
  
  get 'contactus/index', to: "contactus#index"
  get 'contactus/new', to: "contactus#new"

   get 'listings/search', to:"listings#search"
   get 'listings/show', to:"listings#show"
   get 'listings/new', to:"listings#new"
   post 'listings/new', to:"listings#new"
   post 'listings/create', to:"listings#create"

   get 'homes/search', to:"homes#search"

   resources :bus_departures
   resources :models
   resources :reviews, :events, :marketplaces,:professionals
   resources :educational_notes, only: [:index]
   resources :gamifications, only: [:index]
   resources :statistics, only: [:index]
   resources :projects, only: [:index,:show]

   get 'educational_notes/notes_index'
   get 'educational_notes/notes_show'

   #routes for arcy#
   resources :donors
   resources :vacancies
   resources :pet_adoptions
   #################



   get 'listings/sucess', to: "listings#sucess"

   resources :agents, only: [:index]


  root 'homes#index'
  resources :realestates
  resources :tourists
 

  resources :listings do
      resources :reviews
  end
  resources :projects do
      resources :donations
  end

  match "/404", :to => "errors#not_found", :via => :all
  match "/500", :to => "errors#internal_server_error", :via => :all

  mount SimpleDiscussion::Engine => "/forum"

end
