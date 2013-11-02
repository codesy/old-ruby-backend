require 'spec_helper'

feature "Creating Bids" do
  before :each do
    user = FactoryGirl.create(:user)

    visit '/'
    click_link 'Sign in'
    fill_in 'Email', with: user.email
    fill_in 'Password', with: user.password
    click_button 'Sign in'
  end

  scenario "creating a new bid" do
    click_link 'New Bid'
    fill_in 'Url', with: 'http://github.com/gitproject/issues/1'
    fill_in 'Offer', with: '10.0'
    fill_in 'Ask', with: '100.0'
    click_button 'Create Bid'

    expect(page).to have_content('Bid has been created.')
  end
end
