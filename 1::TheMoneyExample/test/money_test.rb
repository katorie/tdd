require 'minitest/autorun'
require './lib/dollar'

class MoneyTest < Minitest::Test
  def test_multiplication
    five = Dollar.new(5)
    product = five.times(2)

    assert_equal 10, product.amount

    product = five.times(3)
    p product
    assert_equal 15, product.amount
  end
end
