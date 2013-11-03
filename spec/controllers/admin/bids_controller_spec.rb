require 'spec_helper'

describe Admin::BidsController do
  context "admin users" do
    it "can access #index" do
      admin = FactoryGirl.create(:admin)

      sign_in admin
      get :index
      expect(response.status).to eq(200)
    end
  end

  context "standard users" do
    it "cannot access #index" do
      user = FactoryGirl.create(:user)

      sign_in user
      get :index
      expect(response).to redirect_to(root_path)
      expect(flash[:alert]).to eq("You must be an admin to do that.")
    end
  end
end
