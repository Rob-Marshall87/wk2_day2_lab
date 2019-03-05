require("minitest/autorun")
require('minitest/rg')

require_relative("../bus_stop")
require_relative("../person")

class BusStopTest < MiniTest::Test

  def setup

    @person1 = Person.new("Steven", 31 )

    @bus_stop = BusStop.new("Leith", [])
  end

  def test_add_person_to_queue
    assert_equal(0, @bus_stop.queue.length)
    @bus_stop.add_person_to_queue(@person1)
    assert_equal(1, @bus_stop.queue.length)
  end

end
