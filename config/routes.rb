Rails.application.routes.draw do

  get 'errors/not_found'
  get 'errors/internal_server_error'
  get 'telephone_directory/index'

  mount RailsAdmin::Engine => '/admins', as: 'rails_admin'
  
  devise_for :users, :controllers => { :omniauth_callbacks => "users/omniauth_callbacks" }

  get 'homes/show', to:"homes#show"
  get 'homes/index', to:"homes#index"
  get 'homes/tool', to:"homes#tool"
  get 'homes/search', to:"homes#search"

  get 'set_mylanguage/np', to:"set_mylanguage#np"
  get 'set_mylanguage/en', to:"set_mylanguage#en"


  get 'aboutus/index', to:"aboutus#index"
  get 'contactus/index', to: "contactus#index"
  get 'contactus/new', to: "contactus#new"

   get 'listings/show', to:"listings#show"
   get 'listings/new', to:"listings#new"
   post 'listings/new', to:"listings#new"
   post 'listings/create', to:"listings#create"

   

   resources :bus_departures
   resources :models
   resources :reviews, :events, :marketplaces,:professionals
   resources :notes, only: [:index]
   resources :gamifications, only: [:index]
   resources :statistics, only: [:index]
   resources :projects, only: [:index,:show]
   resources :tags, only: [:index]

   get 'notes/notes_index'
   get 'notes/notes_show'
   get 'notes/notes_download'
   get 'notes/syllabus_index'


   #routes for statistics
  
   get 'statistics/bhimdatt_index'
   get 'statistics/punarbas_index'
   get 'statistics/krishnapur_index'
   get 'statistics/mahakali_index'
   get 'statistics/suklaphata_index'
   get 'statistics/belauri_index'
   get 'statistics/betkot_index'
   get 'statistics/laljhadi_index'
   get 'statistics/beldadi_index'

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

  #mnr forum
  resources :poll_votes
  resources :posts do
    resources :post_comments
    member do
      put "like" => "posts#upvote"
      put "dislike" => "posts#downvote"
      put "follow" => "posts#follow"
      put "unfollow" => "posts#unfollow"
    end
  end

  mount ActionCable.server => '/cable'

end
