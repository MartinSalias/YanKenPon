class Score
	def initialize
		@scorea = 0
		@scoreb = 0
		@display = "Saque"
		@puntos=[0,15,30,40]
	end
	def pointa
		@scorea+=1
	end
	def pointb
		@scoreb+=1
	end
	def display
		if @scorea == 0 and @scoreb ==0
			@display="Saque" 
		else
			if @scoreb == @scorea 
			@display=@scorea.to_s+" iguales"
		else
			@display=@puntos(@scorea).to_s+"-"+@puntos(@scoreb).to_s
		end
	end
end
end
