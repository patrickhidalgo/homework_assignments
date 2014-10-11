#!/usr/bin/env ruby

numbers = [*1..100]

numbers.map! { |n| (n % 3 == 0 && n % 5 == 0) ? 'FizzBuzz' : n }
numbers.map! { |n| (n % 3 == 0) ? 'Fizz' : n }
numbers.map! { |n| (n % 5 == 0) ? 'Buzz' : n }
puts numbers

