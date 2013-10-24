require 'spec_helper'

feature "Creating Users" do
  scenario "creating a new user" do
    visit '/users'
    click_link 'New User'
    fill_in 'Username', with: 'alyssahacker'
    click_button 'Create User'

    expect(page).to have_content('User has been created.')
  end
end
