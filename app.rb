require 'sinatra'
require './lib/ahorcado.rb'

get '/' do
  erb :home
end

get '/juego' do
  @@ahorcado = Ahorcado.new
  @@ahorcado.new_game()
  @@word = @@ahorcado.word
  @@map = @@ahorcado.map
 
  @intentos = @@ahorcado.intentos
  
  @imagen = "/images/#{@intentos}.jpg"
  
  erb :juego
end

post '/juego' do
  
  @parametros = params[:ingresar]
  @mensaje = @@ahorcado.put_words(@parametros)
  @intentos = @@ahorcado.intentos
  @imagen = "/images/#{@intentos}.jpg"
  
  @resp = @@ahorcado.game_state()
  erb :juego
end
