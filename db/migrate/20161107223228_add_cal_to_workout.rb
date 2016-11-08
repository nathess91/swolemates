class AddCalToWorkout < ActiveRecord::Migration[5.0]
  def change
    add_column :workouts, :cal, :integer
  end
end
