require 'spec_helper'

describe Api::V1::BidsController do
  context "bids viewable by this user" do
    before :each do
      FactoryGirl.reload
      @user = FactoryGirl.create(:user)
      3.times do
        FactoryGirl.create(:bid,
                           :url   => FactoryGirl.generate(:url),
                           :offer => 0.0,
                           :ask   => 0.0,
                           :user  => @user)
      end

      sign_in @user
    end

    it "json" do
      get :index, format: :json

      bids_json = @user.bids.to_json
      response.body.should   eql(bids_json)
      response.status.should eql(200)

      bids = JSON.parse(response.body)
    end
  end
end
