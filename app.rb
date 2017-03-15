require 'sinatra'
require_relative "./lib/juego.rb"


get '/' do
    
end

get '/inicio' do

  @@juego = Juego.new
  @seleccionj1 = ""
  @seleccionj2 = ""
  @resultado = @@juego.mostrar
  
  erb :inicio
end

post '/inicio' do
	@@juego.setjugador1(params['j1'])
	@seleccionj1 = @@juego.getjugador1
  @seleccionj2 = @@juego.getjugador2
  @resultado = @@juego.mostrar
	if @seleccionj2 == 'Y'
		@seleccionj2="Piedra"
	else
		if @seleccionj2 == 'K'
			@seleccionj2="Papel"
		else
			@seleccionj2="Tijera"
		end
	end
	erb :inicio
end
