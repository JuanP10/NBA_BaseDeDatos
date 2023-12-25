--detalles sobre los traspasos de jugadores, incluyendo información del jugador y detalles del traspaso --  
  
SELECT Traspasos.*, Jugadores.nombre AS nombre_jugador
FROM Traspasos
INNER JOIN Jugadores ON Traspasos.idJugador = Jugadores.idPersona;

--  detalles del jugador y equipo actual --

SELECT Jugadores.nombre AS nombre_jugador, Equipos.nombre AS nombre_equipo
FROM Jugadores
INNER JOIN Equipos ON Jugadores.idEquipo = Equipos.idEquipo;

-- Jugadores con premios --

SELECT Jugadores.nombre AS nombre_jugador, PremiosJugadores.fechaDeRecibimiento, Premios.descripcion AS descripcion_premio
FROM Jugadores
LEFT JOIN PremiosJugadores ON Jugadores.idPersona = PremiosJugadores.idJugador
LEFT JOIN Premios ON PremiosJugadores.idPremio = Premios.idPremio;



