class CashRegister
  def initialize
    @total = 0
  end

  def purchase(amount)
    @amount = amount
    @total += @amount
  end

  def total
    @total
  end

  def pay(payment_amount)
    pay = payment_amount
    new_total = @total - pay
    if pay > 0
      if pay < @total
        @total -= pay
      elsif pay == @total
        @total = 0.0
      else
        @total = 0.0
        @total = -new_total
      end
    elsif pay == 0
      @total
    end
  end
end
