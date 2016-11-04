require 'rails_helper'

RSpec.describe Result, type: :model do
	subject(:result) {Result.new}
	before do 
		user = User.new(first_name: 'Toby', last_name: 'Zitsman', email: 'tzitsman@gmail.com', password: 'swordfish', gender: 'Male', age: 25, fav_food: 'pasta', fav_workout: 'long run')
		workout = Workout.new(title: '5 mile run', description: '5 miles straight of running', qty: 5, unit: 'miles', unit_of_competition: 'mins')
		result.user = user
		result.workout = workout
	end
  describe "::new" do
  	it "initializes a new result" do
    	expect(result).to be_a(Result)
  	end
  	it "has a user" do
  		expect(result.user).to be_a(User)
  	end
   	it "has a workout" do
  		expect(result.workout).to be_a(Workout)
  	end
  end

  describe "qty" do
  	before do
  		result.qty = "hello"
  	end
  	it "validates that qty must be numeric" do 
  		expect(result.valid?).to be false
  		result.qty = 40
  		expect(result.valid?).to be true
  	end
  end
end
