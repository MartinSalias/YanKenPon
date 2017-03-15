require 'sinatra'
require_relative "./lib/Tenis1.rb"


get '/principal' do
	@@game= Score.new
	@resultado= @@game.display
	    erb :formulario
end

post '/puntoa' do
	@@game.pointa
	@resultado= @@game.display
	erb :formulario
end

post '/puntob' do
	@@game.pointb
	@resultado= @@game.display
	erb :formulario
end

