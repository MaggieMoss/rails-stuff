module ApplicationHelper
	include SessionsHelper
	def logged_in?
		if session[:user_id]
			return true
		else
			return false
		end
	end
end
