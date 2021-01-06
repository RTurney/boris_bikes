require 'DockingStation'
require 'Bike'

describe DockingStation do
  #describe "responds to the method release_bike" do
  it { is_expected.to respond_to :release_bike }
  # it "responds to the method release_bike" do
  #   expect(DockingStation).to respond_to :release_bike
  # end
  it "releases bike" do
    bike = subject.release_bike
    expect(bike).to be_working
  end
end

# describe DockingStation do
#   describe "responds to the method release_bike" do
#     it "responds to the method release_bike" do
#       expect(DockingStation.new).to respond_to :release_bike
#     end
#   end
# end
