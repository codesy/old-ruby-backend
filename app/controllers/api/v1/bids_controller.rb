class Api::V1::BidsController < Api::V1::BaseController
  def index
    @bids = Bid.where(user: current_user) if current_user
    @bids = Bid.where(url: params[:url]) if params[:url]
  end
end
