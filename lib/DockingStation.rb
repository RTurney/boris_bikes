require_relative 'Bike'

class DockingStation
  def initialize
    @bike_collection = []
  end
    
  def release_bike
    raise "No bikes at station" if @bike_collection.empty?
    @bike_collection.pop
  end

  def dock(bike)
    if @bike_collection.length == 20
      raise "Docking station full."
    end
    @bike_collection << bike
  end

  attr_reader :bike_collection
  # def bike_collection
  #   @bike_collection
  # end
end
