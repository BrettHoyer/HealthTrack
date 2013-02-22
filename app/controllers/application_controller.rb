class ApplicationController < ActionController::Base
	before_filter :require_login
	
 	def require_login
	  if session[:user_id].nil?
	      redirect_to sessions_new_url
	  end
  	end
end
