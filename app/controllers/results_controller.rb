class ResultsController < ApplicationController
  def index
    user = User.find(params[:id])
    @results = user.results
  end

  def create
    @result = Result.create(results_params)

    if @result.save
      flash[:success] = "Results created successfully."
      redirect_to result_path(@result)
    else
      flash[:error] = "Houston, we have an error."
      render :new
    end

  end

  def show
    @result = Result.find(params[:id])
  end

  def destroy
    @result = Result.find(params[:id]).destroy
    asdfasdf
  end

  private

  def results_params
    params.require(:result).permit(:user_id, :workout_id, :qty, :unit)
  end

end
