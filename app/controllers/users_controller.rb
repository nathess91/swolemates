class UsersController < ApplicationController

	def create
		@user = User.new(user_params)
		if @user.valid? 
			@user.save
			session[:user_id] = @user.id
			redirect_to user_path(@user)
		else
			redirect_to root_path
		end
	end

	private
	def user_params
		params.require(:user).permit(:name, :gender, :age, :email, :fav_workout, :password, :fav_food)
	end
end
