class Result < ApplicationRecord
  belongs_to :user
  belongs_to :workout
  has_many :challenges

  validates :qty, numericality: true, presence: true
end
