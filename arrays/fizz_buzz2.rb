#!/usr/bin/env ruby

numbers = [*1..100]

numbers.map! { |n| (n % 3 == 0 && n % 5 == 0) ? 'FizzBizz' : n }
numbers.map! { |n| (n % 3 == 0) ? 'Fizz' : n }
numbers.map! { |n| (n % 5 == 0) ? 'Bizz' : n }
puts numbers

