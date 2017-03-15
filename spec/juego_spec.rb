require_relative "../lib/juego.rb"


describe "Yan Ken Pon" do
	it "Si Inicio " do
		juego = Juego.new
		juego.mostrar.should == "Inicio"
	end
	it "Jugador A y B Piedra " do
		juego = Juego.new
		juego.setjugador1("Y")
		juego.setjugador2("Y")
		juego.mostrar.should == "Empate"
	end
	it "Jugador A y B Papel " do
		juego = Juego.new
		juego.setjugador1("K")
		juego.setjugador2("K")
		juego.mostrar.should == "Empate"
	end
	it "Jugador A y B Tijera " do
		juego = Juego.new
		juego.setjugador1("P")
		juego.setjugador2("P")
		juego.mostrar.should == "Empate"
	end
	it "Jugador A es Piedra y B es Tijera " do
		juego = Juego.new
		juego.setjugador1("Y")
		juego.setjugador2("P")
		juego.mostrar.should == "Gana Jugador 1"
	end
	it "Jugador A es Tijera y B es Piedra " do
		juego1 = Juego.new
		juego1.setjugador1("P")
		juego1.setjugador2("Y")
		juego1.mostrar.should == "Gana Jugador 2"
	end
	it "Jugador A es Papel y B es Tijera " do
		juego = Juego.new
		juego.setjugador1("K")
		juego.setjugador2("P")
		juego.mostrar.should == "Gana Jugador 2"
	end
	it "Jugador A es Tijera y B es Papel " do
		juego = Juego.new
		juego.setjugador1("P")
		juego.setjugador2("K")
		juego.mostrar.should == "Gana Jugador 1"
	end
	it "Jugador A es Piedra y B es Papel " do
		juego = Juego.new
		juego.setjugador1("Y")
		juego.setjugador2("K")
		juego.mostrar.should == "Gana Jugador 2"
	end
	it "Jugador A es Papel y B es Piedra " do
		juego = Juego.new
		juego.setjugador1("K")
		juego.setjugador2("Y")
		juego.mostrar.should == "Gana Jugador 1"
	end

	it "tiro 25 veces y me da valores diferentes" do
		juego = Juego.new
		tiros = Array.new 25

		25.times do |numero|
			juego.jugadarandom
			tiros[numero] = juego.getjugador2
		end

		iguales = true
		tiro1 = tiros[0]
		tiros.each do |este_tiro|
			if este_tiro != tiro1
				iguales = false
				break
			end
		end

		iguales.should == false
	end

end
