Given(/^titulo$/) do
  visit  '/inicio' 
end

Then(/^debo ver "(.*?)"$/) do |arg1|
	last_response.body.should =~ /#{arg1}/m
end


When(/^persona elige "(.*?)"$/) do |opcion|
	#fill_in("j1", :with => opcion)
	choose(opcion)
end

When(/^computadora tira "(.*?)"$/) do |opcion|
	@@juego.setjugador2 opcion
	click_button("Jugar")
end



