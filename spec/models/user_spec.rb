require 'spec_helper'
# create the user 'me@mail.com' and display all todos
describe User, '#todos' do
	it "returns todos whose owner_email is the email instantiated with" do
		create(:todo, description: 'Buy some milk', owner_email: 'me@mail.com')
		create(:todo, description: 'Buy some eggs', owner_email: 'not_me@mail.com')
		user = User.new('me@mail.com')
		expect(user.todos.length).to eq 1
		expect(user.todos.first.description).to eq 'Buy some milk'
	end
end
# create the user 'me@mail.com' and display the email
describe User, '#email' do
	it "returns the email that user was instantiated with" do
		user = User.new('me@mail.com')
		expect(user.email).to eq 'me@mail.com'
	end
end