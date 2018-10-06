class Dollar
  attr_accessor :amount

  def initialize(amount)
    @amount = amount
  end

  def times(multipiler)
    Dollar.new(@amount * multipiler)
  end
end
