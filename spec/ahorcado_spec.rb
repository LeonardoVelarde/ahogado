require './lib/ahorcado.rb'

describe Ahorcado do

  before (:each) do
  @ahorcado = Ahorcado.new
  end

  context "Nuevo Juego" do

    it "deberia devolverme una palabra del conjunto de palabras" do
      @ahorcado.new_game()
      word_result = @ahorcado.word
      array_result = @ahorcado.words
      expect(array_result).to include(word_result)
    end

    it "la cantidad de guiones debe ser igual a la longitud de la palabra seleccionada aleatoriamente" do
      @ahorcado.new_game()
      word_result = @ahorcado.word
      map_result = @ahorcado.map
      expect(word_result.length).to eq(map_result.length)
    end

  end

  context "Verificar letra en la palabra" do
    it "deberia devolverme una respuesta false si la letra no pertenece a la palabra seleccionada aleatoriamente" do
      @ahorcado.new_game()
      word = @ahorcado.word
      res = @ahorcado.letter_validation('10')
      expect(res).to eq false
    end

    it "deberia devolverme una respuesta true si la letra pertenece a la palabra seleccionada aleatoriamente" do
      @ahorcado.new_game()
      word = @ahorcado.word
      res = @ahorcado.letter_validation(word[0])
      expect(res).to eq true
    end
  end

  context "Ingresar letra para ver letras acertadas" do

    it "deberia devolverme el array de guiones con la letra en la posicion correspondiente" do
      @ahorcado.new_game()
      word = @ahorcado.word
      @ahorcado.put_words(word[0])
      map = @ahorcado.map
      expect(map[0]).to eq(word[0])
    end
  end

  context "Resultado de juego" do

    it "deberia devolverme "" si aun el juego sigue en curso" do
      @ahorcado.new_game()
      res = @ahorcado.game_state()
      expect(res).to eq ""
    end

    it "deberia devolverme Ganaste si el juego termino y la palabra esta completa" do
      @ahorcado.new_game()
      word = @ahorcado.word
      word.each_char do |letter|
        @ahorcado.put_words(letter)
      end
      res = @ahorcado.game_state()
      expect(res).to eq("Ganaste")
    end
    
     it "deberia devolverme 'Perdiste' si el juego termino y la palabra no esta completa" do
      @ahorcado.new_game()
      word = @ahorcado.word
      
      @ahorcado.intentos = 6
      
      res = @ahorcado.game_state()
      expect(res).to eq("Perdiste")
    end

  end

  context 'Resultado de intentos en el juego' do
    it 'deberia devolverme incorrecto si la letra ingresada "x" no es la correcta' do
      @ahorcado.new_game()
      res = @ahorcado.put_words('x')
      expect(res).to eq "incorrecto"
    end
    
    it 'deberia devolverme incorrecto si la letra ingresada "x" y "y" no son las correctas' do
      @ahorcado.new_game()
      res1 = @ahorcado.put_words('x')
      res2 = @ahorcado.put_words('y')
      
      if(res1 == "incorrecto" && res2 == "incorrecto")
        res = "incorrecto"
      end      
      expect(res).to eq "incorrecto"
    end
  end

end
