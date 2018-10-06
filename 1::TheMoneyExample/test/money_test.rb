require 'minitest/autorun'
require './lib/dollar'

class MoneyTest < Minitest::Test
  def test_multiplication
    five = Dollar.new(5)
    product = five.times(2)
    assert_equal 10, product.amount

    product = five.times(3)
    assert_equal 15, product.amount
  end

  def test_equality
    assert Dollar.new(5).equals Dollar.new(5)
    refute Dollar.new(5).equals Dollar.new(6)
  end
end
