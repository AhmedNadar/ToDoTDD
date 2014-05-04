module SignInHelpers	
  def sign_in_as(email)
    visit root_path
    fill_in "Email address", with: email
    click_button "Sign in"  	
  end

  def sign_in
  	sign_in_as "me@mail.com"
  end
end

RSpec.configure do |config|
	config.include SignInHelpers
end