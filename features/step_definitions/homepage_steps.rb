Given(/^estoy en la pagina de inicio$/) do
 visit '/'
end

Then(/^deberia ver el titulo del juego "([^"]*)"$/) do |mensaje|
  last_response.body.should =~ /#{mensaje}/m
end

Then(/^deberia mostrar el boton "([^"]*)"$/) do |mensaje2|
  last_response.body.should =~ /#{mensaje2}/m
end
