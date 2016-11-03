class WorkoutsController < ApplicationController
  def index
    @workouts = Workout.all
    @result = Result.new
  end
end
