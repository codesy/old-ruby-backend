require 'spec_helper'

describe Api::V1::CsrfTokensController do
  it "/api/v1/csrf_tokens/show" do
    csrf_token = SecureRandom.base64(32)
    get(:show, {format: :json}, {:_csrf_token => csrf_token})

    csrf_token_json = {'csrf_token' => session[:_csrf_token]}.to_json
    response.body.should eql(csrf_token_json)
    response.status.should eql(200)
  end
end
