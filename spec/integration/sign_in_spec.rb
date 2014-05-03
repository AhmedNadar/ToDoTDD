require 'spec_helper'

feature "Sign in as a user" do
  scenario "with an email address" do
    visit root_path
    fill_in "Email address", with: "ahmed@mail.com"
    click_button "Sign in"

    expect(page).to have_css '.welcome', text: 'Welcome, ahmed@mail.com'
  end
end