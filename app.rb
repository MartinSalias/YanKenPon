require 'sinatra'
require_relative "./lib/juego.rb"


get '/' do
    
end

get '/inicio' do

  @@juego = Juego.new
  @@juego.setjugador1("Y")
  @@juego.setjugador2("Y")
  
  @seleccionj1 = @@juego.getjugador1
  @seleccionj2 = @@juego.getjugador2
  @resultado = @@juego.mostrar
  
  erb :inicio
end


