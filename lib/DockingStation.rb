require_relative 'Bike'

class DockingStation
  def release_bike
    raise "No bikes at station" if @bike.nil?
    @bike
  end

  def dock(bike)
    @bike = bike
  end
  
  attr_reader :bike
  # def bike_docked?
  #   @bike
  # end
end
