#!/usr/bin/env ruby

numbers = [*1..100]
# numbers = (1..100).to_a
buzzkill = numbers
buzzkill.collect! { |n|(n % 3 == 0 && n % 5 == 0) ? 'FizzBuzz' : n }
buzzkill.collect! { |n|(n % 3 == 0) ? 'Fizz' : n }
buzzkill.collect! { |n|(n % 5 == 0) ? 'Buzz' : n }
puts buzzkill

# converted_numbers = numbers.map do |n|
#   if number.odd?
#     'odd'
#   else
#     'even'
#   end
