Given(/^voy a la pagina principal$/) do
  visit '/principal'
end

Then(/^veo "(.*?)"$/) do |mensaje|
  last_response.body.should =~ /#{mensaje}/m
end


When(/^hace punto "(.*?)"$/) do |jugador|
  click_button(jugador)
end

