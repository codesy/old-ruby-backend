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
      expect(bids.count).to be(3)
    end

    it "queryable by url parameter" do
      url = 'http://example.com/issue/1'

      FactoryGirl.create(:bid,
                         :url   => url,
                         :offer => 10.0,
                         :ask   => 20.0,
                         :user  => @user)

      get :index, :url => url, :format => :json

      bids_json = @user.bids.where(url: url).to_json
      response.body.should   eql(bids_json)
      response.status.should eql(200)

      bids = JSON.parse(response.body)
      expect(bids.count).to be(2)
    end
  end
end
