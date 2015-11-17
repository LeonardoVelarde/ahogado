Feature: Perder el juego

Scenario: Mostrar una parte del munieco del juego
       Given estoy en la pagina del juego
       When lleno el campo "ingresar" con la letra incorrecta "x" 
       And presiono el boton "Ok"
       Then deberia ver el mensaje "incorrecto"
       And deberia ver la imagen munieco ".jpg"
