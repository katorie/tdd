class Dollar
  attr_accessor :amount

  def initialize(amount)
    @amount = amount
  end

  def times(multipiler)
    Dollar.new(@amount * multipiler)
  end

  def equals(object)
    dollar = object
    amount == dollar.amount
  end

    def ==(x)
      x.instance_of?(Dollar) and @amount == x.amount
    end
end
