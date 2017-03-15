require_relative "../lib/Tenis1.rb"

describe "Tenis KATA" do

	it "Si Inicio " do
		score = Score.new
		score.display.should == "Saque"
	end
	it "Si A punto, 15-0" do
		score = Score.new
		score.pointa
		score.display.should == "15-0"
	end
	it "Si B punto y A punto, 15 iguales" do
		score = Score.new
		score.pointa
		score.pointb
		score.display.should == "15 iguales"
	end 
	it "Si 1 punto de B, 0-15" do
		score = Score.new
		score.pointb
		score.display.should == "0-15"
	end 
	it "Si 2 puntos de B, 0-30" do
		score = Score.new
		score.pointb
		score.pointb
		score.display.should == "0-30"
	end 
	it "Si 3 puntos de A, 40-0" do
		score = Score.new
		score.pointa
		score.pointa
		score.pointa
		score.display.should == "40-0"
	end 

end

