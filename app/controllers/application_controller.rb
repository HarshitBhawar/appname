class ApplicationController < ActionController::Base
   

    
    
    def current_user
        @current_user ||= Yuser.find(session[:user_id]) if session[:user_id]
    end
    helper_method :current_user  
    protected
    
  
end
