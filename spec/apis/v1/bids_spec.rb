require 'spec_helper'

describe '/api/v1/bids', :type => :api do
  context "bids viewable by this user" do
    it "json" do
      user = FactoryGirl.create(:user)
      3.times do
        FactoryGirl.create(:bid,
                           :url   => FactoryGirl.generate(:url),
                           :offer => 0.0,
                           :ask   => 0.0,
                           :user  => user)
      end

      get "/api/v1/bids.json"

      bids_json = user.bids.to_json
      last_response.body.should eql(bids_json)
      last_response.status.should eql(200)

      bids = JSON.parse(last_response.body)
    end
  end
end
