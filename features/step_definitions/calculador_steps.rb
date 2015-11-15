Given(/^estoy en la pantalla inicial$/) do
   visit '/'
end

When(/^ingreso una cadena "(.*?)" en el campo "(.*?)"$/) do |valor, campo|
fill_in(campo, :with => valor)
end

When(/^hago click en el boton "(.*?)"$/) do |boton|
  last_response.should have_xpath("//input[@name=\"#{boton}\"]")
  click_button(boton)
end

Then(/^deberia mostrarse "(.*?)" en el label "(.*?)"$/) do |valor, campo|
  last_response.body.should =~ /#{valor}/m
  last_response.should have_xpath("//label[@name=\"#{campo}\"]")
end
