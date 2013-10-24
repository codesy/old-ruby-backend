require 'spec_helper'

describe Bid do
  it { should belong_to(:user) }
end
