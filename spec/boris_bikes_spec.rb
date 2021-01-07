require 'DockingStation'
require 'Bike'

describe DockingStation do
  # LONGER SYNTAX - do end block
  # it "releases bikes" do
  #   expect(DockingStation.new).to respond_to :release_bike
  # end

  # ONE LINE SYNTAX - DockingStation assumed by ruby as the subject
  it { is_expected.to respond_to :release_bike }

  it "releases bike" do
    bike = Bike.new
    subject.dock(bike)
    expect(subject.release_bike).to be_working
  end

  it "checks if there is a bike, if there isn't one it raises an error" do
    expect{ subject.release_bike }.to raise_error
  end

  #it { is_expected.to respond_to(:dock).with(1).argument }
  it "docks a bike" do
    bike = Bike.new
    expect(subject.dock(bike)).to eq bike
  end

  it "returns an error if you try to dock more than one bike" do
    bike1, bike2 = Bike.new
    subject.dock(bike1)
    expect{subject.dock(bike2)}.to raise_error
  end
  
  it "returns docked bikes" do
    bike = Bike.new
    subject.dock(bike)
    expect(subject.bike).to eq bike
  end
end

# describe DockingStation do
#   describe "responds to the method release_bike" do
#     it "responds to the method release_bike" do
#       expect(DockingStation.new).to respond_to :release_bike
#     end
#   end
# end
