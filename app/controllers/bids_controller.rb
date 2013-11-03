class BidsController < ApplicationController
  before_action :authenticate_user!

  def index
    @user = current_user
    @bids = @user.bids
  end

  def new
    @user = current_user
    @bid = @user.bids.build
  end

  def create
    @user = current_user
    @bid = @user.bids.build(bid_params)

    if @bid.save
      redirect_to root_path, notice: 'Bid has been created.'
    else
      flash[:alert] = 'Bid has not been created.'
      render 'new'
    end
  end

  private

  def bid_params
    params.require(:bid).permit(:username, :url, :offer, :ask)
  end
end
