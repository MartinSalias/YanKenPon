Given(/^titulo$/) do
  visit  '/inicio' 
end

Then(/^debo ver "(.*?)"$/) do |arg1|
    last_response.body.should =~ /#{arg1}/m
end


When(/^jugador(\d+) elige Piedra$/) do |jugador|
     
end


