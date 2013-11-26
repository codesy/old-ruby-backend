require 'spec_helper'

feature "Creating Bids" do
  scenario "creating a new bid" do
    user = FactoryGirl.create(:user)

    login_with_github

    click_link 'New Bid'
    fill_in 'Url', with: 'http://github.com/githubber/gitproject/issues/1'
    fill_in 'Offer', with: '10.0'
    fill_in 'Ask', with: '100.0'
    click_button 'Create Bid'

    expect(page).to have_content('Bid has been created.')
  end
end
