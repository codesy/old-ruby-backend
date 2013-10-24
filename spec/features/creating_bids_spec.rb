require 'spec_helper'

feature "Creating Bids" do
  scenario "creating a new bid" do
    user = FactoryGirl.create(:user)

    visit '/bids/new'
    expect(page).to have_content('You need to sign in or sign up before continuing.')
    fill_in 'Email', with: user.email
    fill_in 'Password', with: user.password
    click_button 'Sign in'

    expect(page).to have_content('New bid')
  end
end
