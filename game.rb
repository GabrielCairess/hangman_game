require_relative './word.rb'

class Game
  def initialize(word)
    @word = word
    @win = false
    @amount_errors = 5
  end

  def print_begin_game
    print "Escolha uma letra: "
    letter = gets

    if @word.correct_letter?(letter)
      
    else
      
    end
  end
end