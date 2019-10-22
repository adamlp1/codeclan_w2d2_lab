require('minitest/autorun')
require('minitest/rg')
require_relative('../bus')
require_relative('../person')

class BusTest < MiniTest::Test

  def setup()
    @bus = Bus.new(36, "Waverly")
    @passenger = Person.new("Paolo", 28)
    @passenger2 = Person.new("Adam", 22)
    @passenger3 = Person.new("Eduardo", 40)
    @passenger4 = Person.new("Yousef", 23)
  end

  def test_bus_drive()
    assert_equal("Brum Brum", @bus.drive())
  end

  def test_count_passengers()
    assert_equal(0, @bus.count_passengers())
  end

  def test_add_passenger()
    @bus.add_passenger(@passenger)
    assert_equal(1, @bus.count_passengers())
  end

  def test_drop_off_passenger()
    @bus.add_passenger(@passenger)
    @bus.add_passenger(@passenger2)
    @bus.drop_off_passenger(@passenger)
    assert_equal(1, @bus.count_passengers())
  end

  def test_drop_all_passengers()
    @bus.add_passenger(@passenger)
    @bus.add_passenger(@passenger2)
    @bus.add_passenger(@passenger3)
    @bus.add_passenger(@passenger4)
    assert_equal(4, @bus.count_passengers())
    @bus.drop_all_passengers()
    assert_equal(0, @bus.count_passengers())
  end
end
