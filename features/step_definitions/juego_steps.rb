Given(/^estoy en la pagina de inicio del juego$/) do
  visit '/'
end

When (/^presiono el boton de "(.*)"$/) do |text|
  click_link(text)
end


Then(/^deberia ver el mensaje "([^"]*)"$/) do |mensaje|
  last_response.body.should =~ /#{mensaje}/m
end

Then(/^deberia ver la ahorca "([^"]*)"$/) do |vacia|
  last_response.should have_xpath("//img[@name=\"#{vacia}\"]")
  last_response.body.should =~ /#{vacia}/m
end

Then(/^deberia ver el campo "([^"]*)"$/) do |input|
  last_response.should have_xpath("//input[@name=\"#{input}\"]")
  last_response.body.should =~ /#{input}/m
end

Then(/^deberia ver el boton "([^"]*)"$/) do |boton|
  last_response.should have_xpath("//input[@name=\"#{boton}\"]")
  last_response.body.should =~ /#{boton}/m
end
