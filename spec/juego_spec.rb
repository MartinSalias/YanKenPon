require_relative "../lib/juego.rb"


describe "Yan Ken Pon" do
	it "Si Inicio " do
		juego = Juego.new
		juego.mostrar.should == "Inicio"
	end
	it "Jugador A=B " do
		juego = Juego.new
		juego.setjugador1("Y")
		juego.setjugador2("Y")
		juego.mostrar.should == "Empate"
	end
	it "Jugador A es Piedra y B es Tijera " do
		juego = Juego.new
		juego.setjugador1("Y")
		juego.setjugador2("P")
		juego.mostrar.should == "Gana Jugador 1"

	end

end
