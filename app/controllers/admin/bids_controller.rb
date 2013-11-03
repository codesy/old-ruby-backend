class Admin::BidsController < ApplicationController
  before_action :authenticate_user!
  before_action :authorize_admin!

  def index
    @bids = Bid.all
  end
end
