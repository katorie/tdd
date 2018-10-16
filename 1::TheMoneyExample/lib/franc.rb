class Franc
  attr_accessor :amount

  def initialize(amount)
    @amount = amount
  end

  def times(multipiler)
    Franc.new(@amount * multipiler)
  end

  def equals(object)
    franc = object
    amount == franc.amount
  end
end
