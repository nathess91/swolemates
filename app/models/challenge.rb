class Challenge < ApplicationRecord
  belongs_to :workout
  belongs_to :user
  belongs_to :opponent, class_name: "User"
  belongs_to :result
  belongs_to :opponent_result, class_name: "Result", optional: true
end
