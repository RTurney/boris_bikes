require "Bike"

describe Bike do
  it { is_expected.to respond_to :working? }
  # bike = Bike.new
  # it { expect(bike).to be_working }
end
