Feature: Juego YanKenPon

Scenario: verifica titulo
 Given titulo
 Then debo ver "Bienvenido a YanKenPon"


Scenario: verifica empate
 Given titulo
 When jugador1 elige Piedra
 And jugador2 elige Piedra
 Then debo ver "Empate"

