class Workout < ApplicationRecord
	has_many :results
	has_many :challenges

	validates :qty, numericality: true, presence: true
	validates :verb, presence: true
end
