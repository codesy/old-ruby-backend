require 'spec_helper'

feature "Creating Bids" do
  scenario "creating a new bid" do
    user = FactoryGirl.create(:user)

    visit '/'
    click_link 'Sign in'
    fill_in 'Email', with: user.email
    fill_in 'Password', with: user.password
    click_button 'Sign in'

    visit '/bids/new'
    fill_in 'Url',   with: 'http://github.com/githubber/gitproject/issues/1'
    fill_in 'Offer', with: '5.00'
    fill_in 'Ask',   with: '100.00'
    click_button 'Create Bid'

    expect(page).to have_content('Bid has been created.')
  end
end
