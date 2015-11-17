Feature: Iniciar juego

Scenario: Mostrar pagina de inicio de juego
Given estoy en la pagina de inicio
When presiono el boton de "Juego Nuevo"
Then deberia ver el mensaje "Nuevo juego"
Then deberia ver la ahorca "0.jpg"
Then deberia ver el campo "ingresar"
Then deberia ver el boton "Ok"
