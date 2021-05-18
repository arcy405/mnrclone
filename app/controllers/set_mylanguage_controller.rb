class SetMylanguageController < ApplicationController
	#English
 def en
  I18n.locale = :en
  set_session_and_redirect
 end

 #Nepali
 def np
  I18n.locale = :np
  set_session_and_redirect
 end

 private
 def set_session_and_redirect
  session[:locale] = I18n.locale
  redirect_to root_path 
 end
end
