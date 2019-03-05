class BusStop
  attr_accessor :name, :queue
  def initialize(name, queue)
    @name = name
    @queue = queue
  end

  def add_person_to_queue(name)
    @queue << name
  end



end
