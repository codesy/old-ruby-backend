require 'spec_helper'

feature 'Viewing bids' do
  before :all do
    @user  = FactoryGirl.create(:user)
    @admin = FactoryGirl.create(:admin)

    3.times do
      FactoryGirl.create(:bid,
                         :url   => FactoryGirl.generate(:url),
                         :offer => 0.0,
                         :ask   => 0.0,
                         :user  => @user)
    end

    3.times do
      FactoryGirl.create(:bid,
                         :url   => FactoryGirl.generate(:url),
                         :offer => 0.0,
                         :ask   => 0.0,
                         :user  => @admin)
    end
  end

  scenario 'admins view the bid history by all users' do
    # sign in as admin user
    visit '/admin/bids'
    fill_in "Email",    with: @admin.email
    fill_in "Password", with: @admin.password
    click_button "Sign in"

    (1..3).each_with_index do |n|
      expect(page).to have_content("http://example.com/issue/#{n}")
    end
  end

  scenario "users view their bid history" do
    # sign in as user
    visit '/bids'
    fill_in "Email",    with: @user.email
    fill_in "Password", with: @user.password
    click_button "Sign in"

    (1..3).each_with_index do |n|
      expect(page).to have_content("http://example.com/issue/#{n}")
    end
  end
end
