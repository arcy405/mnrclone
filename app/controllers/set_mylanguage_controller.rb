class SetMylanguageController < ApplicationController
	#English
 def en
    donors = params[:donors] 
  I18n.locale = :en
  if donors == "donors"
    set_session_and_redirect2
  else
    set_session_and_redirect
  end
 end

 #Nepali
 def np
    donors = params[:donors] 
  I18n.locale = :np
  if donors == "donors"
    set_session_and_redirect2
  else
    set_session_and_redirect
  end
 end

 private

 def set_session_and_redirect2
    session[:locale] = I18n.locale
    redirect_to donors_path 
 end
 
 def set_session_and_redirect
  session[:locale] = I18n.locale
  redirect_to root_path 
 end


end
