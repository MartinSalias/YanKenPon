class Score
	def initialize
		@scorea = 0
		@scoreb = 0
		@display = "Saque"
	end
	def pointa
		@scorea+=15
	end
	def pointb
		@scoreb+=15
	end
	def display
		if @scorea==45
			@scorea=40
		end
		if @scorea == 0 and @scoreb ==0
			@display="Saque" 
		else
			if @scoreb == @scorea 
			@display=@scorea.to_s+" iguales"
		else
			@display=@scorea.to_s+"-"+@scoreb.to_s
		end
	end
end
end
