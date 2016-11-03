class ChallengesController < ApplicationController

	def new
		@challenge = Challenge.new
		@workouts = Workout.all
		@opponents = User.all
		@results = current_user.results
	end

	def index
		@challenges = current_user.challenges
	end

	def create
		challenge = Challenge.create(challenge_params)
		
		if challenge.save
			flash[:success] = "New challenge successfully created! Go find your Swolemate!"
			redirect_to root_path
		else
			flash[:error] = "Oops. There was a problem making a new challenge."
			redirect_to :back
		end

	end

	private

	def challenge_params
		params.require(:challenge).permit(:opponent_id, :workout_id, :result_id, :user_id)
	end

end
