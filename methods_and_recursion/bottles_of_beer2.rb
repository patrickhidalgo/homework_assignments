#!/usr/bin/env ruby

def bottle_count(bottle)
  if bottle == 0
    puts 'No more bottles of beer on the ' \
                'wall, no more bottles of beer.'
    puts 'Go to the store and buy some more, 99 bottles of beer ' \
                'on the wall.'
  elsif bottle == 1
    puts "#{bottle} bottle of beer on the wall, #{bottle} bottle of beer."
    puts 'Take one down and pass it around, ' \
                'no more bottles of beer on the wall.'
    puts ''
    bottle_count(bottle - 1)
  elsif bottle == 2
    puts "#{bottle} bottles of beer on the wall, #{bottle} bottles of beer."
    puts 'Take one down and pass it around, ' \
                "#{bottle - 1} bottle of beer on the wall."
    puts ''
    bottle_count(bottle - 1)
  else
    puts "#{bottle} bottles of beer on the wall, #{bottle} bottles of beer."
    puts 'Take one down and pass it around, ' \
                "#{bottle - 1} bottles of beer on the wall."
    puts ''
    bottle_count(bottle - 1)

  end

end

puts bottle_count(99)
