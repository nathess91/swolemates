require 'rails_helper'

RSpec.describe User, type: :model do
  describe "::new" do
  	it "initializes a new user" do
  		user = User.new
    	expect(user).to be_a(User)
  	end
  end
end
