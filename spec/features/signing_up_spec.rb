require 'spec_helper'

feature "Signing up" do
  scenario "signing up with an email address" do
    visit '/users/sign_up'
    fill_in 'Email', with: 'user@codesy.io'
    fill_in 'Password', with: 'password'
    fill_in 'Password confirmation', with: 'password'
    click_button 'Sign up'

    expect(page).to have_content('You have signed up successfully.')
  end
end
