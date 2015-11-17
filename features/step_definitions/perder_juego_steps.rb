When(/^lleno el campo "([^"]*)" con la letra incorrecta "([^"]*)"$/) do |campo, valor|
  fill_in(campo, :with => valor)
end

When(/^presiono el boton "([^"]*)"$/) do |boton|
  click_button(boton)
end

Then(/^deberia ver la imagen munieco "([^"]*)"$/) do |imagen|
	# last_response.should have_xpath("//img[@name=\"#{imagen}\"]")
	last_response.body.should =~ /#{imagen}/m
end




