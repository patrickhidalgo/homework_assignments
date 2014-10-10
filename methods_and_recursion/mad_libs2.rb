#!/usr/bin/env ruby

def ask_question(question)
  print "#{question} "
  gets.chomp
end

word_type_array = [
  'adjective', 'another_adjective', 'noun', 'another_noun',
  'plural_noun game', 'another_plural_noun', 'verb_ending_in_ing',
  'another_verb_ending_in_ing', 'another_plural_noun',
  'another_verb_ending_in_ing', 'another_noun', 'plant', 'part_of_body',
  'place', 'another_verb_ending_in_ing', 'another_adjective', 'number',
  'another_plural_noun'
]

question_array = []

count = 0
word_type_array.each do ||
  question_array.push(word_type_array[count])
  # question = ask_question(question_array[count])
  count += 1
end

puts question_array[]
