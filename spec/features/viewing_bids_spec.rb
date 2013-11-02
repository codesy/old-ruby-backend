require 'spec_helper'

feature 'Viewing bids' do
  scenario 'viewing all bids' do
    user  = FactoryGirl.create(:user)
    admin = FactoryGirl.create(:admin)

    # normal user creates three bids
    3.times do
      FactoryGirl.create(:bid,
                         :url => FactoryGirl.generate(:url),
                         :offer => 0.0,
                         :ask => 0.0,
                         :user => user)
    end

    # sign in as admin user
    visit '/bids'
    fill_in "Email", with: admin.email
    fill_in "Password", with: admin.password
    click_button "Sign in"

    (1..3).each_with_index do |n|
      expect(page).to have_content("http://example.com/issue/#{n}")
    end
  end
end
