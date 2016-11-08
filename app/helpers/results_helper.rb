module ResultsHelper
  def calorie_count
    @result.workout.qty * @result.workout.cal
  end
end
