require("minitest/autorun")
require('minitest/rg')

require_relative("../bus")
require_relative("../person")
require_relative("../bus_stop")

class BusTest < MiniTest::Test

  def setup
    @person1 = Person.new("Steven", 31 )
    @person2 = Person.new("Jane", 17 )
    @person3 = Person.new("Jack",  53 )

    @bus_stop1 = BusStop.new("Leith", [@person1, @person2])

    @bus = Bus.new("22", "Ocean Terminal", [])


  end

  def test_bus_route_and_destination
    assert_equal("22", @bus.route)
    assert_equal("Ocean Terminal", @bus.destination)
  end

  def test_drive
    assert_equal("brum brum", @bus.drive)
  end

  def test_number_of_passengers
    assert_equal(0, @bus.passengers.length)
  end

  def test_pick_up
    @bus.pick_up(@person1)
    assert_equal(1, @bus.passengers.length)
  end

  def test_drop_off
    @bus.pick_up(@person1)
    assert_equal(1, @bus.passengers.length)
    @bus.drop_off(@person1)
    assert_equal(0, @bus.passengers.length)
  end

  def test_empty
    @bus.pick_up(@person1)
    @bus.pick_up(@person2)
    assert_equal(2, @bus.passengers.length)
    @bus.empty
    assert_equal(0, @bus.passengers.length)
  end

  def test_pick_up_from_stop
    assert_equal(0, @bus.passengers.length)
    @bus.pick_up_from_stop(@bus_stop1)
    assert_equal(3, @bus.passengers.length)

  end

end
