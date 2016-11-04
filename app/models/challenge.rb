	class Challenge < ApplicationRecord
  belongs_to :workout
  belongs_to :user
  belongs_to :opponent, class_name: "User"
  belongs_to :result
  belongs_to :opponent_results, class_name: "Result", optional: true

	validates :workout_id, :opponent_id, :result_id, presence: true
end
