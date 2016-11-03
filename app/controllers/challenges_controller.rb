class ChallengesController < ApplicationController

	def new
		@challenge = Challenge.new
		@workouts = Workout.all
		@opponents = User.all
		@results = current_user.results
	end

	def create
		challenge = Challenge.create(challenge_params)
		redirect_to challenge_path(challenge)
	end

	def show
		@challenge = Challenge.find(params[:id])
		@user = @challenge.user
		@user_result = @challenge.result
		@opponent = @challenge.opponent
		@opponent_result = @challenge.opponent_result
		@workout = @challenge.workout
	end

	def update
		@challenge = Challenge.find(params[:id])
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

end
