require( 'minitest/autorun' )
require( 'minitest/rg' )
require_relative( '../models/shoe')

class TestShoe < Minitest::Test

def setup()
  @shoe = Shoe.new( {"first_name" => "Jessica", "last_name" => "Brown", "address" => "16A WestPort", "size" => 7, "quantity" => 2} )
end

def test_first_name()
  assert_equal("Jessica", @shoe.first_name)
end

def test_last_name()
  assert_equal("Brown", @shoe.last_name)
end

def test_pretty_name()
  assert_equal("Jessica Brown", @shoe.pretty_name())
end

def test_has_address()
 assert_equal("16A WestPort", @shoe.address())
end

def test_has_quantity()
  assert_equal(2, @shoe.quantity())
end

def test_total()
  assert_equal(40, @shoe.total())
end

end