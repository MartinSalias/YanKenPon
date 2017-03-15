Feature: Juego YanKenPon

Scenario: verifica titulo
 Given titulo
 Then debo ver "Bienvenido a YanKenPon"

Scenario: verifica Inicio
 Given titulo
 Then debo ver "Inicio"

Scenario: verifica empate
 Given titulo
 When persona elige "Y"
 And computadora tira "Y"
 Then debo ver "Empate"

Scenario: verifica Gana Jugador 1
 Given titulo
 When persona elige "Y"
 And computadora tira "P"
 Then debo ver "Gana Jugador 1"

Scenario: verifica Gana Jugador 2
 Given titulo
 When persona elige "Y"
 And computadora tira "K"
 Then debo ver "Gana Jugador 2"
