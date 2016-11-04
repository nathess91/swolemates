class User < ApplicationRecord
	has_many :results
	has_many :challenges
	has_attached_file :avatar, styles: { medium: "300x300>", thumb: "100x100>" }, default_url: "/images/:style/missing.png"

	validates_attachment_content_type :avatar, content_type: /\Aimage\/.*\z/
	validates :first_name, :last_name, length: { minimum: 2, maximum: 63 }, presence: true
	validates :gender, inclusion: { in: %w(male female other),
		message: "Please choose male, female, or other" }, presence: true
	validates :age, numericality: true, presence: true
	validates :fav_workout, :fav_food, length: { minimum: 2, maximum: 25 }, presence: true, numericality: false
	validates :email, uniqueness: true, presence: true,
		format: { with: /\A([^@\s]+)@((?:[-a-z0-9]+\.)+[a-z]{2,})\z/i, on: :create }
	has_secure_password

	def self.confirm (email, password)
		user = User.find_by(email: email)
		user.authenticate(password)
	end
end
