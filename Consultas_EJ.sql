-- Detalles sobre los traspasos de jugadores, incluyendo información del jugador y detalles del traspaso
SELECT Traspasos.*, Jugadores.nombre AS nombre_jugador
FROM Traspasos
INNER JOIN Jugadores ON Traspasos.idJugador = Jugadores.idPersona;

-- Detalles del jugador y equipo actual
SELECT Jugadores.nombre AS nombre_jugador, Equipos.nombre AS nombre_equipo
FROM Jugadores
INNER JOIN Equipos ON Jugadores.idEquipo = Equipos.idEquipo;

-- Jugadores con premios
SELECT Jugadores.nombre AS nombre_jugador, PremiosJugadores.fechaDeRecibimiento, Premios.descripcion AS descripcion_premio
FROM Jugadores
LEFT JOIN PremiosJugadores ON Jugadores.idPersona = PremiosJugadores.idJugador
LEFT JOIN Premios ON PremiosJugadores.idPremio = Premios.idPremio;

-- Información sobre el jugador y sus premios
CREATE OR REPLACE FUNCTION obtenerInfoJugadorConPremios(idJugador_param INT)
RETURNS TABLE (
    nombre_jugador VARCHAR(100),
    fecha_nacimiento DATE,
    altura DECIMAL(5, 2),
    peso DECIMAL(5, 2),
    premios_obtenidos VARCHAR(255)
)
AS $$
BEGIN
    RETURN QUERY
    SELECT
        Jugadores.nombre,
        TO_DATE(Jugadores.fechaDeNacimiento, 'DD/MM/YYYY') AS fecha_nacimiento,
        Jugadores.altura,
        Jugadores.peso,
        COALESCE(string_agg(Premios.descripcion, ', '), 'Sin premios') AS premios_obtenidos
    FROM
        Jugadores
    LEFT JOIN
        PremiosJugadores ON Jugadores.idPersona = PremiosJugadores.idJugador
    LEFT JOIN
        Premios ON PremiosJugadores.idPremio = Premios.idPremio
    WHERE
        Jugadores.idPersona = idJugador_param
    GROUP BY
        Jugadores.nombre, Jugadores.fechaDeNacimiento, Jugadores.altura, Jugadores.peso;
END;

$$ LANGUAGE plpgsql;





