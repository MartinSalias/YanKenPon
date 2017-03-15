class Juego

	def initialize
		@jugador1=nil
		@jugador2=nil
		@proxima_jugada=""
		@mostrar="Inicio"
		@valores= ["Y", "K", "P"]

	end

	def setjugador1 valor
		@jugador1=valor
	end

	def setjugador2 valor
		@jugador2=valor
		@proxima_jugada=valor
	end

	def getjugador1
		return @jugador1
	end

	def getjugador2
		if @proxima_jugada.empty?
			jugadarandom
		else
			@jugador2 = @proxima_jugada
			@proxima_jugada = ""
		end
		
		return @jugador2
	end

	def jugadarandom
		azar = Random.rand (3)
		@jugador2 = @valores[azar]
	end

	def mostrar

		if @jugador1==nil and @jugador2==nil
			return "Inicio"
		else
			if @jugador1==@jugador2
				return "Empate"
			end
		end

		if (@jugador1=="Y" and @jugador2=="P") or (@jugador1=="K" and @jugador2=="Y") or (@jugador1=="P" and @jugador2=="K")
			return "Gana Jugador 1"
		end 

		if (@jugador1=="P" and @jugador2=="Y") or (@jugador1=="K" and @jugador2=="P") or (@jugador1=="Y" and @jugador2=="K")
			return "Gana Jugador 2"
		end
	end

end



