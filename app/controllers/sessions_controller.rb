class SessionsController < ApplicationController

	def new
		@user = User.new
	end

	def create
		@user = User.confirm(params[:email], params[:password])

		if @user
			login(@user)
			flash[:notice] = "You are now logged in."
			redirect_to @user
		else
			flash[:error] = "Incorrect email or password."
			redirect_to login_path
		end
	end

	def destroy
		session[:user_id] = nil
		flash[:notice] = "You are logged out. Bye!"
		logout
		redirect_to root_path
	end

end
