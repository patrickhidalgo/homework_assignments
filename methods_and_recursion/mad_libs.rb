#!/usr/bin/env ruby

def ask_question(question)
  print "#{question} "
  gets.chomp
end

adjective = ask_question('Give me an adjective')
another_adjective = ask_question('Give me an another adjective')
noun = ask_question('Give me a noun')
another_noun = ask_question('Give me another noun')
plural_noun = ask_question('Give me a plural noun')
game = ask_question('Give me a game')
another_plural_noun = ask_question('Give me another plural noun')
verb_ending_in_ing = ask_question('Give me a verb ending in "ing"')
another_verb_ending_in_ing =
  ask_question('Give me another verb ending in "ing"')
one_more_plural_noun = ask_question('Give me another plural noun')
yet_another_verb_ending_in_ing =
  ask_question('Give me yet another verb ending in "ing"')
yet_another_noun = ask_question('Give me yet another noun')
plant = ask_question('Give me a plant')
part_of_body = ask_question('Give me a part of the body')
place = ask_question('Give me a place')
last_verb_ending_in_ing = ask_question('Give me the last verb ending in "ing"')
yet_another_adjective = ask_question('Give yet another adjective')
number = ask_question('Give me a number')
last_plural_noun = ask_question('Give me the last plural noun')

puts ''
puts "A vacation is when you take a trip to some #{adjective} place"
puts "with your #{another_adjective} family. Usually you go to some place"
puts "that is near a/an #{noun} or up on a/an #{another_noun}."
puts "A good vacation place is one where you can ride #{plural_noun}"
puts "or play #{game} or go hunting for #{another_plural_noun}. I like"
puts "to spend my time #{verb_ending_in_ing} or #{another_verb_ending_in_ing}."
puts 'When parents go on a vacation, they spend their time eating'
puts "three #{one_more_plural_noun} a day, and fathers play golf, and mothers"
puts "sit around #{yet_another_verb_ending_in_ing}. Last summer, " \
    ' my little brother'
puts "fell in a/an #{yet_another_noun} and got poison #{plant} all"
puts "over his #{part_of_body}. My family is going to go to (the)"
puts "#{place}, and I will practice #{last_verb_ending_in_ing}. Parents"
puts 'need vacations more than kids because parents are always very'
puts "#{yet_another_adjective} and because they have to work #{number}"
puts "hours every day all year making enough #{last_plural_noun} to pay"
puts 'for the vacation.'
