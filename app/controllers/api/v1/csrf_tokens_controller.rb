class Api::V1::CsrfTokensController < ApplicationController
  def show
    @csrf_token = session[:_csrf_token]
  end
end
