class Dollar
  attr_accessor :amount

  def initialize(amount)
    @amount = amount
  end

  def times(multipiler)
    @amount *= multipiler
  end
end
