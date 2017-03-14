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
			if @jugador1==@jugador2
				@mostrar="Empate"
			else
				if (@jugador1="Y" and @jugador2="P")
					@mostrar="Gana Jugador 1"
				else 
					if (@jugador1="P" and @jugador2="Y")
						@mostrar="Gana Jugador 2"
					end
				end
			end
		end
	end

	def setjugador1 valor
		@jugador1=valor
	end

	def setjugador2 valor
		@jugador2=valor
	end


end

