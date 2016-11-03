class ChallengesController < ApplicationController

	def new
		@challenge = Challenge.new
		@workouts = Workout.all
		@opponents = User.all
		@results = current_user.results
	end
	def index
		@challenges = User.find(current_user.id).challenges
	end
	def create
		challenge = Challenge.create(challenge_params)
		redirect_to root_path
	end

	private
	def challenge_params
		params.require(:challenge).permit(:opponent_id, :workout_id, :result_id, :user_id)
	end

end
