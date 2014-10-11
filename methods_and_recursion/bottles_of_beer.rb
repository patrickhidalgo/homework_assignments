#!/usr/bin/env ruby

def bottle_count(bottle)
  if bottle == 0
    current_bottle_plurality = 'no more bottles'
    first_line = "#{current_bottle_plurality.capitalize} of beer on the " \
                "wall, #{current_bottle_plurality} of beer."
    final_line = 'Go to the store and buy some more, 99 bottles of beer ' \
                'on the wall.'
  elsif bottle == 1
    current_bottle_plurality = 'bottle'
    future_bottle_plurality = 'no more bottles'
    first_line = "#{bottle} #{current_bottle_plurality} of beer on the " \
                "wall, #{bottle} #{current_bottle_plurality} of beer."
    final_line = 'Take one down and pass it around, ' \
                "#{future_bottle_plurality} of beer on the wall."
  elsif bottle == 2
    current_bottle_plurality = 'bottles'
    future_bottle_plurality = 'bottle'
    first_line = "#{bottle} #{current_bottle_plurality} of beer on the " \
                  " wall, #{bottle} #{current_bottle_plurality} of beer."
    final_line = "Take one down and pass it around, #{bottle - 1}" \
                  " #{future_bottle_plurality} of beer on the wall."
  else
    current_bottle_plurality = 'bottles'
    future_bottle_plurality = 'bottles'
    first_line = "#{bottle} #{current_bottle_plurality} of beer on the " \
                "wall, #{bottle} #{current_bottle_plurality} of beer."
    final_line = "Take one down and pass it around, #{bottle - 1}" \
                " #{future_bottle_plurality} of beer on the wall."
  end
  puts first_line
  puts final_line
  puts ''
end

puts 'Lyrics of the song 99 Bottles of Beer'
puts ' '
count = 99

while count >= 0
  bottle_count(count)
  count -= 1
end
