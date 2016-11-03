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

	def edit
		@user = User.find(params[:id])
	end

	def update
    @user = User.find(params[:id])
    @user.update(user_params)
    redirect_to @user
  end

  def show
    @user = User.find(params[:id])
  end

	private
	def user_params
		params.require(:user).permit(:first_name, :last_name, :gender, :age, :email, :fav_workout, :password, :fav_food)
	end
end
