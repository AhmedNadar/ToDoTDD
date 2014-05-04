require 'spec_helper'
feature "Manage todos" do
  scenario "create a new todo" do
    visit root_path
    fill_in "Email address", with: "ahmed@mail.com"
    click_button "Sign in"
    click_link "Add a new todo"
    fill_in "Description", with: "Buy some milk"
    click_button "Create todo"

    expect(page).to have_css 'li.todo', text: "Buy some milk"
  end
end