class Bid < ActiveRecord::Base
  belongs_to :user

  validates :url, presence: true

  validates :offer,
    presence:     true,
    numericality: { greater_than_or_equal_to: 0 }

  validates :ask,
    presence:     true,
    numericality: { greater_than_or_equal_to: 0 }

  def to_builder
    Jbuilder.new do |bid|
      bid.user_id user_id
      bid.url     url
      bid.offer   offer
      bid.ask     ask
    end
  end
end
