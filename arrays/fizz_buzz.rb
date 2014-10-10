#!/usr/bin/env ruby

numbers = [*1..100]
buzzkill = numbers
buzzkill.collect! { |n|(n % 3 == 0 && n % 5 == 0) ? 'FizzBizz' : n }
buzzkill.collect! { |n|(n % 3 == 0) ? 'Fizz' : n }
buzzkill.collect! { |n|(n % 5 == 0) ? 'Bizz' : n }
puts buzzkill
