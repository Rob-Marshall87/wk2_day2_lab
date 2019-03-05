class Bus
  attr_accessor :route, :destination, :passengers
  atte_reader :queue
  def initialize(route, destination, passengers)
    @route = route
    @destination = destination
    @passengers = passengers
  end

  def drive
    return "brum brum"
  end

  def pick_up(person)
    @passengers << person
  end

  def drop_off(person)
    @passengers.delete(person)
  end

  def empty
    @passengers.clear
  end

  def pick_up_from_stop(stop)
    @passengers << stop.queue
  end

end
