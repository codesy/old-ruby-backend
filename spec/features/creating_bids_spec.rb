require 'spec_helper'

feature "Creating Bids" do
  scenario "creating a new bid" do
    visit '/bids/new'
    fill_in 'Username', with: 'githubber'
    fill_in 'Url', with: 'http://github.com/someissue'
    fill_in 'Offer', with: '5.00'
    fill_in 'Ask', with: '100.00'
    click_button 'Create Bid'

    expect(page).to have_content('Bid has been created.')
  end
end
