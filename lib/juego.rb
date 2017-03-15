class Juego

	def initialize
		@jugador1=nil
		@jugador2=nil
		@mostrar="Inicio"
	end

	def mostrar
		if @jugador1==nil and @jugador2==nil
			return @mostrar="Inicio"
		else
			if @jugador1==@jugador2
				return @mostrar="Empate"
			end
		end
		if (@jugador1=="Y" and @jugador2=="P")
			return @mostrar="Gana Jugador 1"
		end 
		if (@jugador1=="P" and @jugador2=="Y") or (@jugador1=="K" and @jugador2=="P")
			return @mostrar="Gana Jugador 2"
		end
	end

	def setjugador1 valor
		@jugador1=valor
	end

	def setjugador2 valor
		@jugador2=valor
	end


end

