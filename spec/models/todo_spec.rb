require 'spec_helper'

describe Todo, '#user=' do
	 it "assignes owner_email from the user passed in email" do
	 	user = User.new('me@mail.com')
	 	todo = Todo.new
	 	todo.user = user
	 	expect(todo.owner_email).to eq 'me@mail.com'
	 end
end
