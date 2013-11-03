require 'spec_helper'

describe Bid do
  it { should belong_to(:user) }
  it { should validate_presence_of(:url) }

  it { should validate_presence_of(:offer) }
  it { should validate_numericality_of(:offer).is_greater_than_or_equal_to(0) }

  it { should validate_presence_of(:ask) }
  it { should validate_numericality_of(:ask).is_greater_than_or_equal_to(0) }
end
