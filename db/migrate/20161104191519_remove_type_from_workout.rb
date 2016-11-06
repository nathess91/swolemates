class RemoveTypeFromWorkout < ActiveRecord::Migration[5.0]
  def change
    remove_column :workouts, :type, :string
  end
end
