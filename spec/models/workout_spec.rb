require 'rails_helper'

RSpec.describe Workout, type: :model do
  subject(:workout) {Workout.new}
  describe "::new" do
  	it "initializes a new workout" do
    	expect(workout).to be_a(Workout)
  	end
  end

  describe "qty" do
  	before do
  		workout.qty = "hello"
  	end
  	it "validates that qty must be numeric" do 
  		expect(workout.valid?).to be false
  		workout.qty = 100
  		expect(workout.valid?).to be true
  	end
  end
end
