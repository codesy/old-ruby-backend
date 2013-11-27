class Api::V1::BidsController < Api::V1::BaseController
  before_action :authenticate_user!

  def index
    @bids = Bid.for_user(current_user)
    @bids = @bids.for_url(params[:url]) if params[:url]
  end
end
