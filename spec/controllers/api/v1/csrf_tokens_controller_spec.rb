require 'spec_helper'

describe Api::V1::CsrfTokensController do
  context "when a user is signed in" do
    before :each do
      @user = FactoryGirl.create(:user)
      sign_in @user
    end

    it "/api/v1/csrf_token" do
      csrf_token = SecureRandom.base64(32)
      get(:show, {format: :json}, {:_csrf_token => csrf_token})

      csrf_token_json = {'csrf_token' => session[:_csrf_token]}.to_json
      response.body.should eql(csrf_token_json)
      response.status.should eql(200)
    end
  end

  context "when a user is not signed in" do
    it "/api/v1/csrf_token" do
      get :show, format: :json

      response.status.should eql(401)
    end
  end
end
