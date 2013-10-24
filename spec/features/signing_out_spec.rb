require 'spec_helper'

feature "Signing out" do
  scenario "signing out" do
    user = FactoryGirl.create(:user)

    visit '/'
    click_link 'Sign in'
    fill_in 'Email', with: user.email
    fill_in 'Password', with: user.password
    click_button 'Sign in'
    click_link 'Logout'

    expect(page).to_not have_content("Signed in as #{ user.email }")
  end
end
