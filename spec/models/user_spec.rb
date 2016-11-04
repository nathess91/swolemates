require 'rails_helper'

RSpec.describe User, type: :model do
	subject(:user) {User.new}
  describe "::new" do
  	it "initializes a new user" do
    	expect(user).to be_a(User)
  	end
  end
  it { should validate_presence_of(:first_name) }
  it { should validate_presence_of(:last_name) }
  it { should validate_presence_of(:email) }
  it { should validate_uniqueness_of(:email) }

  context "when validating an email" do
    it "should contain an @ symbol" do
      user.email = "asdf"
      expect{user.save!}.to raise_error
    end
  end

  it { should have_many(:results) }
  it { should have_many(:challenges) }
  it { should validate_inclusion_of(:gender).in_array(["male", "female", "other"]) }
  it { should validate_numericality_of(:age)}
  it { should_not validate_numericality_of(:fav_food)}
  it { should_not validate_numericality_of(:fav_workout)}
  it { should have_secure_password}
end
