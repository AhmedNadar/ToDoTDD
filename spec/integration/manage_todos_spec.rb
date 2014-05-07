require 'spec_helper'
feature "Manage todos" do
  scenario "create a new todo" do
  	sign_in
    click_link "Add a new todo"
    fill_in "Description", with: "Buy some milk"
    click_button "Create todo"
    expect(page).to have_css 'li.todo', text: "Buy some milk"
  end
  scenario "view only my todos" do
  	# create a todo list 'Buy some milk' which is created by another email > 'not_me@mail.com'
  	Todo.create!(description: 'Buy some eggs', owner_email: 'not_me@mail.com')
  	# I signin, create a todo and see my list only
  	sign_in
    click_link "Add a new todo"
    fill_in "Description", with: "Buy some milk"
    click_button "Create todo"
    expect(page).to have_css 'li.todo', text: "Buy some milk"
    # I expect not to see the other todo list that created above
    expect(page).not_to have_css 'li.todo', text: "Buy some eggs"
  end
end