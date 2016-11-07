require 'rails_helper'

RSpec.describe UsersController, type: :controller do
	describe "routes" do 
		it { should route(:get, '/users').to(action: :index) }
		it { should route(:get, '/users/1').to(action: :show, id: 1)}
		it { should route(:post, '/users').to(action: :create)}
		it {should route(:get, '/users/1/edit').to(action: :edit, id: 1)}
		it {should route(:put, '/users/1').to(action: :update, id: 1)}
	end


	describe "#create" do
		describe "invalid" do
			before do
				@user = User.new # lazy instantiation
			end
			it "Should be a User" do
				expect(@user).to be_a(User)
			end
			it "Should redirect on a bad POST" do 
				# expect(:post => '/users').to redirect_to(root_path)
				post :create, params: {user: {first_name: "foo"}}
				expect(response).to redirect_to(root_path)
			end
			it "Redirect User page Success" do 
				post :create, params: {user: {first_name: "foo", last_name: "bar", age: 28, password: '123456', email: "a@b.com", gender: 'male', fav_food: 'ax', fav_workout: 'by'}}
				expect(response).to redirect_to(user_path(User.last))
			end
		end
	end

	describe "#update" do 
		before do
			@user = User.last
		end
		it "Should be a User" do
			expect(@user).to be_a(User)
		end
	end
end
