Feature: Salir del juego

Scenario: Volver a la pantalla inicio
Given estoy en la pagina del juego
When presiono el boton de "Salir de Juego"
Then deberia ver el titulo del juego "Ultimate Hangman"
Then deberia mostrar el boton "Juego Nuevo"
