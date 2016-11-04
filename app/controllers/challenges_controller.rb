class ChallengesController < ApplicationController

	def new
		@challenge = Challenge.new
		@workouts = Workout.all
		@opponents = User.where.not(id: current_user.id)
		@results = current_user.results
	end

	def index
		@challenges = current_user.challenges
	end

	def create
		challenge = Challenge.create(challenge_params)

		if challenge.save
			flash[:success] = "New challenge successfully created! Go find your Swolemate!"
			redirect_to challenge_path(challenge)
		else
			flash[:error] = "Oops. There was a problem making a new challenge."
			redirect_to :back
		end

	end

	def show
		@challenge = Challenge.find(params[:id])
		@user = @challenge.user
		@user_result = @challenge.result
		@opponent = @challenge.opponent
		@opponent_results = @challenge.opponent_results
		@workout = @challenge.workout
	end

	def update
		@challenge = Challenge.find(params[:id])
		@result = Result.new(results_params)
		if @result.valid?
			@result.save
		end
		@challenge.opponent_results = @result || nil
		@challenge.accepted = true
		@challenge.save
		redirect_to challenge_path(@challenge)
	end

	def destroy
		challenge = Challenge.find(params[:id])
		challenge.destroy
		redirect_to user_path(current_user)
	end

	private

	def challenge_params
		params.require(:challenge).permit(:opponent_id, :workout_id, :result_id, :user_id)
	end

	def results_params
    params.require(:result).permit(:user_id, :workout_id, :qty, :unit)
  end

end
