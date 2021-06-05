class ApplicationController < ActionController::Base
      
    before_action :store_user_location!, if: :storable_location?

    protect_from_forgery with: :exception
    before_action :configure_permitted_parameters, if:  :devise_controller?

    before_action :set_locale

    private

    private 
      def set_locale
        if  user_signed_in? && current_user.admin?
           I18n.locale = "en"
        else
           I18n.locale = session[:locale] || I18n.default_locale
           session[:locale] = I18n.locale
        end
      end

    protected
    
      def configure_permitted_parameters
    
        devise_parameter_sanitizer.permit(:sign_up) { |u| u.permit(:email, :password,:password_confirmation, :name, :admin,:provider,:uid,:image) }
        devise_parameter_sanitizer.permit(:account_update) { |u| u.permit(:email, :password,:password_confirmation, :current_password, :name,:admin,:provider,:uid,:image)}
    
      end
  
    private
    # Its important that the location is NOT stored if:
    # - The request method is not GET (non idempotent)
    # - The request is handled by a Devise controller such as Devise::SessionsController as that could cause an 
    #    infinite redirect loop.
    # - The request is an Ajax request as this can lead to very unexpected behaviour.
    def storable_location?
      request.get? && is_navigational_format? && !devise_controller? && !request.xhr? 
    end

    def store_user_location!
      # :user is the scope we are authenticating
      store_location_for(:user, request.fullpath)
    end

    def after_sign_in_path_for(resource_or_scope)
      stored_location_for(resource_or_scope) || super
    end
    
end
