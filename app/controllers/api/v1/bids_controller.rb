class Api::V1::BidsController < Api::V1::BaseController
  before_action :authenticate_user!

  def index
    @user = current_user
    @bids = @user.bids
  end
end
