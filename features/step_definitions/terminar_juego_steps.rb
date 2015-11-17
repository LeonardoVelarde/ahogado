Given(/^estoy en la pagina del juego$/) do
  visit '/juego'
end

Then(/^deberia ver el campo "([^"]*)" con un valor vacio "([^"]*)"$/) do |arg1, arg2|
  last_response.should have_xpath("//label[@name=\"#{arg1}\"]")
  last_response.body.should =~ /#{arg2}/m
end
