class AddTypeToWorkout < ActiveRecord::Migration[5.0]
  def change
    add_column :workouts, :type, :string
  end
end
