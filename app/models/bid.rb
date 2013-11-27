class Bid < ActiveRecord::Base
  belongs_to :user

  validates :url, presence: true

  validates :offer,
    presence:     true,
    numericality: { greater_than_or_equal_to: 0 }

  validates :ask,
    presence:     true,
    numericality: { greater_than_or_equal_to: 0 }

  scope :for_user, ->(user) { where(user: user) }
  scope :for_url,  ->(url)  { where(url: url)   }
end
