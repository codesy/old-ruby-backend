require 'spec_helper'

feature "Viewing Users" do
  scenario "viewing all users" do
    user = FactoryGirl.create(:user)

    visit '/users'

    expect(page).to have_content(user.username)
  end

  scenario "viewing a user" do
    user = FactoryGirl.create(:user)

    visit '/users'
    click_link user.username

    expect(page).to have_content(user.username)
    expect(page).to have_content(user.created_at)
    expect(page).to have_content(user.updated_at)
  end
end
