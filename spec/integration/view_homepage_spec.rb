require 'spec_helper'

feature "View the home page" do
  scenario "user sees relvant information" do
    visit	root_path

    expect(page).to have_css 'title', text: 'Todos', visible: false
    expect(page).to have_css '[data-role="description"]'
  end
end