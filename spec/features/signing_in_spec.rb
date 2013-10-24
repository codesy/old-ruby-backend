require 'spec_helper'

feature "Signing in" do
  scenario "Signing in with an email address" do
    user = FactoryGirl.create(:user)

    visit '/'
    click_link 'Sign in'
    fill_in 'Email', with: user.email
    fill_in 'Password', with: user.password
    click_button 'Sign in'

    expect(page).to have_content('Signed in successfully.')
    expect(page).to have_content("Signed in as #{ user.email }")
  end
end
