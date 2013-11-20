class Api::V1::BidsController < Api::V1::BaseController
  def index
    respond_with(Bid.all)
  end
end
