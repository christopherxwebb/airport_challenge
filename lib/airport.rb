require_relative 'plane'

class Airport

attr_reader :planes
DEFAULT_CAPACITY = 1

  def initialize (desired_capacity = DEFAULT_CAPACITY)
    @planes = []
    @planes_taken_off = []
    @capacity = desired_capacity
  end

  def land(plane)
    if @planes.count == 0
        @planes.push(plane)
    else fail "Airport full"
    end
  end

  def takeoff(plane)
    @planes.pop
    puts "#{plane} has now taken off! There are currently #{@planes.count} planes in the airport."
    @planes_taken_off << plane
  end

  #def full?
    #if @planes.count >= @capacity
      #true
    #else
      #false
    #end
  #end

end