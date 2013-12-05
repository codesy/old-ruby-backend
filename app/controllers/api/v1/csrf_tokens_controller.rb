class Api::V1::CsrfTokensController < Api::V1::BaseController
  def show
    @csrf_token = session[:_csrf_token]
  end
end
