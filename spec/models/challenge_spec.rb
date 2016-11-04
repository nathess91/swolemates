require 'rails_helper'

RSpec.describe Challenge, type: :model do
	subject(:challenge) {Challenge.new}
	before do 
		@user = User.create(first_name: 'Toby', last_name: 'Zitsman', email: 'tzitsman@gmail.com', password: 'swordfish', gender: 'male', age: 25, fav_food: 'pasta', fav_workout: 'long run')
		@opponent = User.create(first_name: 'Natalia', last_name: 'Hess', email: 'natalia@fruit.com', password: 'swordish', gender: 'female', age: 24, fav_food: 'kale', fav_workout: 'all of them')
		@workout = Workout.create(title: '5 mile run', description: '5 miles straight of running', qty: 5, unit: 'miles', unit_of_competition: 'mins')
		@result = Result.new(qty: 40, unit: 'mins')
		@result.user = @user
		@result.workout = @workout
		@result.save
	end
  describe "::new" do
  	it "initializes a new challenge" do
    	expect(challenge).to be_a(Challenge)
  	end
  	it "requires a user, an opponent, a workout, and a result" do
  		expect(challenge.valid?).to be false
  		challenge.user = @user
  		challenge.opponent = @opponent
  		challenge.workout = @workout
  		challenge.result = @result
  		expect(challenge.valid?).to be true
  	end
  end
end
