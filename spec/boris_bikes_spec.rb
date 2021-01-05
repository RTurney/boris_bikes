require 'DockingStation'

describe DockingStation do
  #describe "responds to the method release_bike" do
    #it { is_expected.to respond_to release_bike }
  it "responds to the method release_bike" do
    expect(DockingStation).to respond_to :release_bike
  end
end
