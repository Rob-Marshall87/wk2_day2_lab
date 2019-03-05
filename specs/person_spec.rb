require("minitest/autorun")
require('minitest/rg')

require_relative("../person")

class PersonTest < MiniTest::Test

  def setup
    @person1 = Person.new("John", 28)
  end

  def test_person_name_and_age
    assert_equal("John", @person1.name)
    assert_equal(28, @person1.age)
  end

end
