class Word
  attr_reader :original_word
  attr_accessor :hidden_word

  def initialize(word)
    @hidden_word = fill_hidden_word(word)
    @original_word = word.upcase
  end

  def fill_hidden_word(word)
    array_hidden_word = []
    word.size.times { array_hidden_word.push('*') }
    array_hidden_word
  end

  def correct_letter?(letter)
    @original_word.include?(letter.upcase())
  end

  def how_many_times?(letter)
    count = 0
    @original_word.split('').each { |l| count += 1 if letter.upcase().eql?(l.upcase()) }
    count
  end

  def replace_letter_in_the_hidden_word(letter)
    positions = get_positions_of_letter(letter)
    positions.each { |p| @hidden_word[p] = letter }
  end

  def get_positions_of_letter(letter)
    positions = []
    @original_word.split('').each_with_index { |val, index| 
      positions.push(index) if letter.upcase().eql?(val.upcase()) 
    }
    positions
  end

  def print_word
    print @original_word
  end

  def print_hidden_word
    print @hidden_word.join().upcase()
  end
end