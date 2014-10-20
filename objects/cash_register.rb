#!/usr/bin/env ruby

# Need to create a cash register class
# Need the following methods:
# 1) purchase method takes a floating number and adds that to the total
# 2) total method returns how much is owed
# 3) pay method takes one floating number for how much is paid
#    a) if paid >=total owed, return how much change is given
#    b) if paid <total owed, subtract from total owed

class CashRegister
  def initialize
    @total = 0.00
  end

  def purchase(amount)
    @purchase = amount.to_f
    @total = (@total + @purchase).round(2)
  end

  def total
    @total.round(2)
  end

  def pay(payment_amount)
    pay = payment_amount.to_f
    new_total = @total - pay
    @total -= pay
    if @total < 0
      @total = 0
      -new_total.round(2)
    else
      @total.round(2)
    end
  end
end

# register = CashRegister.new
# puts register.total
# puts register.purchase(3.78)
# puts register.total
# puts register.pay(5.00)
# puts register.total

register = CashRegister.new
puts register.total
puts register.purchase(3.78)
puts register.purchase(5.22)
puts register.total
puts register.pay(5)
puts register.total
puts register.pay(5)
puts register.total
