require 'spec_helper'

feature "Sign in as a user" do
  scenario "with an email address" do
		sign_in_as 'me@mail.com'
    expect(page).to have_css '.welcome', text: 'Welcome, me@mail.com'
  end 
end