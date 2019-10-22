require('minitest/autorun')
require('minitest/rg')
require_relative('../bus_stop')
require_relative('../person')

class BusStopTest < MiniTest::Test

  def setup()
    @passenger = Person.new("Paolo", 28)
    @bus_stop = BusStop.new("Stopppp")
  end

  def test_add_person()
    @bus_stop.add_person(@passenger)
    assert_equal(1, @bus_stop.count_passengers())
  end
end
