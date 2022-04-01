RailsAdmin.config do |config|
  config.asset_source = :webpacker

  ## == Devise ==
  config.authenticate_with do
    warden.authenticate! scope: :user
    redirect_to main_app.root_path unless warden.user.admin?
  end
  config.current_user_method(&:current_user)

 ## == CancanCan ==
  config.authorize_with :cancancan

  config.actions do
    dashboard                    
    index                        
    new
    export
    bulk_delete
    show
    edit
    delete
    show_in_app

    ## With an audit adapter, you can add:
    # history_index
    # history_show
    
  end
 
end
