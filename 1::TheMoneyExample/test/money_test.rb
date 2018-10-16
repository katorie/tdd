require 'minitest/autorun'
require './lib/dollar'
require './lib/franc'

class MoneyTest < Minitest::Test
  def test_multiplication
    five = Dollar.new(5)
    assert_equal Dollar.new(10), five.times(2)
    assert_equal Dollar.new(15), five.times(3)
  end

  def test_equality
    assert Dollar.new(5).equals Dollar.new(5)
    refute Dollar.new(5).equals Dollar.new(6)
  end

  def test_franc_multiplication
    five = Franc.new(5)
    assert_equal Franc.new(10), five.times(2)
    assert_equal Franc.new(15), five.times(3)
  end
end

class Dollar
  def ==(x)
    x.instance_of?(Dollar) and @amount == x.amount
  end
end

class Franc
  def ==(x)
    x.instance_of?(Franc) and @amount == x.amount
  end
end
