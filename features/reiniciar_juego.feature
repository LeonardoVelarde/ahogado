Feature: Reiniciar Juego

Scenario: Recargar pagina para juego nuevo
Given estoy en la pagina del juego
When presiono el boton de "Reiniciar Juego"
Then deberia ver el mensaje "Nuevo juego"
Then deberia ver la ahorca "0.jpg"
Then deberia ver el campo "ingresar"
Then deberia ver el boton "Ok"
