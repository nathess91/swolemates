class ResultsController < ApplicationController
  def index
    user = User.find(params[:id])
    @results = user.results
  end

  def create
    @result = Result.create(results_params)

    if @result.valid?
      flash[:success] = "Results created successfully."
      redirect_to result_path(current_user.id, @result)
    else
      flash[:error] = @result.errors.full_messages.join(". ")
      redirect_to :back
    end

  end

  def show
    @result = Result.find(params[:result_id])
    @user = @result.user
  end

  def destroy
    @result = User.find(params[:user_id]).results.find(params[:id]).destroy
    redirect_to user_path(current_user)
  end

  private

  def results_params
    params.require(:result).permit(:user_id, :workout_id, :qty, :unit)
  end

end
