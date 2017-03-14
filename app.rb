require 'sinatra'

get '/' do
    
end

get '/inicio' do
  @seleccionj1="Piedra"
  @seleccionj2="Piedra"
  @resultado="Empate"

  erb :inicio

end
