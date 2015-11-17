class Ahorcado

  attr_accessor :words, :word, :map, :intentos

  def initialize
    @words = ["hola","casa","nosotros","ingenieria","bolivia","cochabamba"]
    @intentos = 0
    @word = ""
    @map = Array.new
  end

  def random_word
      return rand(0..@words.length-1)
  end

  def get_word
    @position = random_word
    @word = @words[@position]
  end

  def get_map
    for i in 1..@word.length
     @map.push('_')
    end
  end

  def new_game
    get_word
    get_map
  end

  def letter_validation(letter)
      letter = letter.downcase
      return @word.include? letter
  end

  def put_words(letter)
    letter = letter.downcase
    pos=0
    if letter_validation(letter)
      @word.each_char do |chr|
         if(chr == letter)
           @map[pos] = letter
         end
          pos=pos+1
      end
      ""
    else
      @intentos = @intentos + 1
      "incorrecto"
    end
  end

  def game_state
    if @intentos == 6 and @map.include? '_'
       return "Perdiste"
    elsif @map.include? '_'
      return ""   
    else
      return "Ganaste"
    end
  end
end
