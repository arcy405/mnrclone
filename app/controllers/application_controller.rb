require 'net/https'
class ApplicationController < ActionController::Base
    after_action :store_action

    before_action :configure_permitted_parameters, if:  :devise_controller?


    protected
    
      def configure_permitted_parameters
    
        devise_parameter_sanitizer.permit(:sign_up, keys: [:name])
    
      end
  
  def store_action
    return unless request.get? 
    if (request.path != "/users/sign_in" &&
        request.path != "/users/sign_up" &&
        request.path != "/users/password/new" &&
        request.path != "/users/password/edit" &&
        request.path != "/users/confirmation" &&
        request.path != "/users/sign_out" &&
        !request.xhr?) # don't store ajax calls
      store_location_for(:user, request.fullpath)
    end
  end

  RECAPTCHA_MINIMUM_SCORE = 0.5


  def verify_recaptcha?(token, recaptcha_action)
    secret_key = Rails.application.credentials.dig(:recaptcha_secret_key)

    uri = URI.parse("https://www.google.com/recaptcha/api/siteverify?secret=#{secret_key}&response=#{token}")
    response = Net::HTTP.get_response(uri)
    json = JSON.parse(response.body)
    json['success'] && json['score'] > RECAPTCHA_MINIMUM_SCORE && json['action'] == recaptcha_action
  end
  
end
