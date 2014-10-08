#!/usr/bin/env ruby
count = 1
while count <= 100
  if count % 3 == 0 && count % 5 == 0
    puts 'FizzBizz'
  elsif count % 5 == 0
    puts 'Bizz'
  elsif count % 3 == 0
    puts 'Fizz'
  else
    puts count
  end
  count += 1
end
