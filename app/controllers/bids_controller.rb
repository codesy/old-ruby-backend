class BidsController < ApplicationController
  def index
    @bids = Bid.all
  end

  def new
    @user = User.find(params[:user_id])
    @bid = Bid.new
  end

  def create
    @bid = Bid.new(bid_params)

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
