class Juego

	def initialize
		@jugador1=nil
		@jugador2=nil
		@mostrar="Inicio"
	end

	def mostrar
		if @jugador1==nil and @jugador2==nil
			@mostrar="Inicio"
		else
			@mostrar="Empate"
		end
	end

	def setjugador1 valor
		@jugador1=valor
	end

	def setjugador2 valor
		@jugador2=valor
	end


end

