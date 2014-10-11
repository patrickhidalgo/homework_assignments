#!/usr/bin/env ruby

elements = []

count = 1
while count <= 10
  elements.push count
  count += 1
end

puts "#{elements.join('...')}..."
puts "T-#{elements.reverse.join(', ')}...  BLASTOFF"
puts "The last element is #{elements.last}"
puts "The first element is #{elements.first}"
puts "The third element is #{elements[2]}"
puts "The element with an index of 3 is #{elements[3]}"
puts "The second from last element is #{elements[elements.length - 2]}"
puts "The first four elements are '#{elements.first(4).join(',')}'"
# puts "If we delete 5, 6 and 7 from the array, we're left with
# #{elements.keep_if { |i| i != 5 && i != 6 && i !=7}}"
# puts "If we delete 5, 6 and 7 from the array, we're left with
# #{elements.select{ |i| i != 5 && i != 6 && i !=7}}"
puts "If we delete 5, 6 and 7 from the array, we're left with " \
    "#{elements.delete_if { |i| i > 4 && i < 8 } }"
puts "If we add 5 at the beginning of the array, we're left with "\
      "#{elements.delete_if { |i| i > 4 && i < 8 }.unshift(5) }"
puts "If we add 6 at the end of the array, we're left with "\
      "#{ (elements.delete_if { |i| i > 4 && i < 8 }.unshift(5)).push(6) }"
puts "Only the elements #{elements.select { |i| i > 8 } } are > 8 "
puts 'If we remove all the elements, then the length of the array is '\
    "#{elements.clear.length} "
