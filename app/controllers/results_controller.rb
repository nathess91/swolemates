class ResultsController < ApplicationController
  # def index
  #   @results = Result.find_by(user: params[:user_id])
  # end

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

  private

  def results_params
    params.require(:result).permit(:user_id, :workout_id, :qty, :unit)
  end

end
