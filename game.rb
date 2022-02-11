require_relative './word.rb'

word = Word.new('palavra')
word.replace_letter_in_the_hidden_word('a')
word.replace_letter_in_the_hidden_word('p')
word.replace_letter_in_the_hidden_word('l')
word.replace_letter_in_the_hidden_word('v')
word.replace_letter_in_the_hidden_word('r')

word.print_hidden_word
