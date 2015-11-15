require 'sinatra'
require 'calculadora'

get '/' do
  erb :calculadora
end

post '/' do
  @calculadora = Calculadora.new
  @parametros = params[:ingresar]
  @resp = @calculadora.sumar(@parametros)
  erb :calculadora
end
