class AddVerbToWorkout < ActiveRecord::Migration[5.0]
  def change
    add_column :workouts, :verb, :string
  end
end
