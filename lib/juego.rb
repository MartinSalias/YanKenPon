class Juego

	def initialize
		@jugador1=nil
		@jugador2=nil
		@proxima_jugada=""
		@mostrar="Inicio"
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
		if azar == 0
	  	@jugador2 = "Y"
		elsif azar == 1
	  	@jugador2 = "K"
		elsif azar == 2
	  	@jugador2 = "P"
		end
	end

	def mostrar
		if @jugador1==nil and @jugador2==nil
			return @mostrar="Inicio"
		else
			if @jugador1==@jugador2
				return @mostrar="Empate"
			end
		end

		if (@jugador1=="Y" and @jugador2=="P") or (@jugador1=="K" and @jugador2=="Y") or (@jugador1=="P" and @jugador2=="K")
			return @mostrar="Gana Jugador 1"
		end 


		if (@jugador1=="P" and @jugador2=="Y") or (@jugador1=="K" and @jugador2=="P") or (@jugador1=="Y" and @jugador2=="K")
			return @mostrar="Gana Jugador 2"
		end
	end



end



