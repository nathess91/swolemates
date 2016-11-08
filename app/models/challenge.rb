class Challenge < ApplicationRecord
  belongs_to :workout
  belongs_to :user
  belongs_to :opponent, class_name: "User"
  belongs_to :result
  belongs_to :opponent_results, class_name: "Result", optional: true

	validates :workout_id, :opponent_id, :result_id, presence: true

	def declare_a_winner
		return nil if opponent_results.nil?
		if result.unit === 'mins'
			if result.qty < opponent_results.qty
        user
      elsif opponent_results.qty < result.qty
        opponent
      else
        'none'
      end

		elsif
      if result.qty > opponent_results.qty
        user
      elsif opponent_results.qty > result.qty
        opponent
      else
        'none'
      end
	end

end
