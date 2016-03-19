class SessionsController < ApplicationController
  def new
  	render '/user/login'
  end

  def create
  	user = User.find_by({ email: params[:email] })
  	# check if user can log in 
  	if user && user.authenticate(params[:password])
  		login(user)
  		render '/user/show'
  	else
  		redirect_to '/login'
  	end 
  end

  def destroy
  	session[:user_id] = nil
  end
end
