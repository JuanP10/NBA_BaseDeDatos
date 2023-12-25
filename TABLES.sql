--TABLAS:

CREATE TABLE Fases (
	idFase INTEGER NOT NULL PRIMARY KEY,
	nombre VARCHAR(255) NOT NULL
);

CREATE TABLE Conferencias (
	idConferencia INTEGER NOT NULL PRIMARY KEY,
	nombre VARCHAR(255) NOT NULL
);

CREATE TABLE Divisiones (
	idDivisión INTEGER NOT NULL PRIMARY KEY,
	nombre VARCHAR(255) NOT NULL,
	idConferencia INTEGER NOT NULL,
	FOREIGN KEY (idConferencia) REFERENCES Conferencias(idConferencia)
);


CREATE TABLE TiposDeCanales (
	idTipoDeCanal INTEGER NOT NULL PRIMARY KEY,
	nombre VARCHAR(255) NOT NULL
);

CREATE TABLE CanalesDeTransmisión (
	idCanalDeTransmisión INTEGER NOT NULL PRIMARY KEY,
	nombre VARCHAR(255) NOT NULL,
	idTipoDeCanal INTEGER NOT NULL,
	FOREIGN KEY (idTipoDeCanal) REFERENCES TiposDeCanales(idTipoDeCanal)
);

CREATE TABLE Estados (
	idEstado INTEGER NOT NULL PRIMARY KEY,
	nombre VARCHAR(255) NOT NULL
);

CREATE TABLE Premios (
	idPremio INTEGER NOT NULL PRIMARY KEY,
	nombre VARCHAR(255) NOT NULL
);

CREATE TABLE Países (
	idPaís INTEGER NOT NULL PRIMARY KEY,
	nombre VARCHAR(255) NOT NULL UNIQUE
	
);

CREATE TABLE Ciudades (
	idCiudad INTEGER NOT NULL PRIMARY KEY,
	nombre VARCHAR(255) NOT NULL,
	idPaís INTEGER NOT NULL,
	idEstado INTEGER,

	FOREIGN KEY (idPaís) REFERENCES Países(idPaís),
	FOREIGN KEY (idEstado) REFERENCES Estados(idEstado)
);

CREATE TABLE Posiciones (
	idPosición INTEGER NOT NULL PRIMARY KEY,
	nombre VARCHAR(255) NOT NULL
);

CREATE TABLE TiposDeFaltas (
	idTipoDeFalta INTEGER NOT NULL PRIMARY KEY,
	nombre VARCHAR(255) NOT NULL
);

CREATE TABLE TiposDeAnotación (
	idTipoDeAnotación INTEGER NOT NULL PRIMARY KEY,
	nombre VARCHAR(255) NOT NULL,
	puntos INTEGER NOT NULL
	
);

CREATE TABLE TiposDeTraspasos (
	idTipoDeTraspaso INTEGER NOT NULL PRIMARY KEY,
	Nombre VARCHAR(255) NOT NULL
);

CREATE TABLE Instituciones (
	idInstitución INTEGER NOT NULL PRIMARY KEY,
	nombre VARCHAR(255) NOT NULL,
	idCiudad INTEGER NOT NULL,
	FOREIGN KEY (idCiudad) REFERENCES Ciudades(idCiudad)
);

CREATE TABLE Personas (
	idPersona INTEGER NOT NULL PRIMARY KEY,
	primerNombre VARCHAR(255) NOT NULL,
	segundoNombre VARCHAR(255),
	primerApellido VARCHAR(255) NOT NULL,
	segundoApellido VARCHAR(255)
);

CREATE TABLE Candidatos (
	idCandidato INTEGER NOT NULL PRIMARY KEY,
	altura DECIMAL (255) NOT NULL,
	peso DECIMAL NOT NULL,
	fechaNacimiento DATE NOT NULL,
	idPosición INTEGER NOT NULL,
	idInstituciónProcedencia INTEGER NOT NULL,

	FOREIGN KEY (idPosición) REFERENCES Posiciones(idPosición),
	FOREIGN KEY (idInstituciónProcedencia) REFERENCES Instituciones(idInstitución)
);

CREATE TABLE Pruebas (
	idPrueba INTEGER NOT NULL PRIMARY KEY,
	nombre VARCHAR(255) NOT NULL
);

CREATE TABLE ResultadosPruebas (
	idPrueba INTEGER NOT NULL,
	idCandidato INTEGER NOT NULL,
	resultado INTEGER NOT NULL,

	PRIMARY KEY (idPrueba, idCandidato),
	FOREIGN KEY (idPrueba) REFERENCES Pruebas(idPrueba),
	FOREIGN KEY (idCandidato) REFERENCES Candidatos(idCandidato)
);

CREATE TABLE Patrocinadores (
	idPatrocinador INTEGER NOT NULL PRIMARY KEY,
	nombre VARCHAR(255) NOT NULL,
	idPaísProcedencia INTEGER NOT NULL,
	
FOREIGN KEY (idPaísProcedencia) REFERENCES Países(idPaís)
);

CREATE TABLE Árbitros (
	idPersona INTEGER NOT NULL PRIMARY KEY,
	
FOREIGN KEY (idPersona) REFERENCES Personas(idPersona)
);

CREATE TABLE Estadios (
	idEstadio INTEGER NOT NULL PRIMARY KEY,
	nombre VARCHAR(255) NOT NULL,
	dirección VARCHAR(255) NOT NULL,
	capacidad INTEGER NOT NULL,
	idCiudad INTEGER NOT NULL,
	
FOREIGN KEY (idCiudad) REFERENCES Ciudades(idCiudad)
);

CREATE TABLE Equipos (
	idEquipo INTEGER NOT NULL PRIMARY KEY,
	nombre VARCHAR(255) NOT NULL,
	fechaDeFundación DATE NOT NULL,
	idCiudad INTEGER NOT NULL,
	idDivisión INTEGER NOT NULL,
	idEstadioDueño INTEGER NOT NULL,
	idPatrocinador INTEGER NOT NULL,
	
FOREIGN KEY (idCiudad) REFERENCES Ciudades(idCiudad),
FOREIGN KEY (idDivisión) REFERENCES Divisiones(idDivisión),
FOREIGN KEY (idEstadioDueño) REFERENCES Estadios(idEstadio),
FOREIGN KEY (idPatrocinador) REFERENCES Patrocinadores(idPatrocinador)
);

CREATE TABLE Partidos (
	idPartido INTEGER NOT NULL PRIMARY KEY,
	idEquipoLocal INTEGER NOT NULL,
	idEquipoVisitante INTEGER NOT NULL,
	fechaRealización DATE NOT NULL,
	horaIniciación TIME NOT NULL,
	horafinalización TIME NOT NULL,
	idEstadio INTEGER NOT NULL,
	idFase INTEGER NOT NULL,

FOREIGN KEY (idEquipoLocal) REFERENCES Equipos(idEquipo),
FOREIGN KEY (idEquipoVisitante) REFERENCES Equipos(idEquipo),
FOREIGN KEY (idEstadio) REFERENCES Estadios(idEstadio),
FOREIGN KEY (idFase) REFERENCES Fases(idFase)
);

CREATE TABLE ParticipacionesÁrbitros (
	idPartido INTEGER NOT NULL,
	idÁrbitro INTEGER NOT NULL,
	
	PRIMARY KEY (idPartido, idÁrbitro),
	FOREIGN KEY (idPartido) REFERENCES Partidos(idPartido),
	FOREIGN KEY (idÁrbitro) REFERENCES Árbitros(idPersona)
);

CREATE TABLE EventoDeReclutamiento (
	idEventoDeReclutamiento INTEGER NOT NULL PRIMARY KEY,
	fechaRealización DATE NOT NULL	
);

CREATE TABLE Reclutamientos (
	idCandidato INTEGER NOT NULL,
	idEquipo INTEGER NOT NULL,
	idEventoDeReclutamiento INTEGER NOT NULL,
	ronda INTEGER NOT NULL,
	selección INTEGER NOT NULL,
	PRIMARY KEY (idCandidato, idEquipo, idEventoDeReclutamiento),
	FOREIGN KEY (idCandidato) REFERENCES Candidatos(idCandidato),
	FOREIGN KEY (idEquipo) REFERENCES Equipos(idEquipo),
	FOREIGN KEY (idEventoDeReclutamiento) REFERENCES EventoDeReclutamiento(idEventoDeReclutamiento)
);

CREATE TABLE Jugadores (
	idPersona INTEGER NOT NULL PRIMARY KEY,
	dorsal INTEGER NOT NULL,
	fechaDeNacimiento DATE NOT NULL,
	altura DECIMAL NOT NULL,
	peso DECIMAL NOT NULL,
	fechaInicioCarreraProfesional DATE NOT NULL,
	fechaRetiro DATE,
	idInstituciónProcedencia INTEGER NOT NULL,
	idCiudadNacimiento INTEGER NOT NULL,
	idPosición INTEGER NOT NULL,
	idEquipo INTEGER NOT NULL,
	
FOREIGN KEY (idPersona) REFERENCES Personas(idPersona),
FOREIGN KEY (idInstituciónProcedencia) REFERENCES Instituciones(idInstitución),
FOREIGN KEY (idCiudadNacimiento) REFERENCES Ciudades(idCiudad),
FOREIGN KEY (idPosición) REFERENCES Posiciones(idPosición),
FOREIGN KEY (idEquipo) REFERENCES Equipos(idEquipo)
);

CREATE TABLE Patrocinios (
	idPatrocinador INTEGER NOT NULL,
	idJugador INTEGER NOT NULL,
	fechaInicio DATE NOT NULL,
	fechaFinalización DATE,
	
	PRIMARY KEY(idPatrocinador, idJugador),
	FOREIGN KEY (idPatrocinador) REFERENCES Patrocinadores(idPatrocinador),
	FOREIGN KEY (idJugador) REFERENCES Jugadores(idPersona)
);

CREATE TABLE Faltas (
	idFalta INTEGER NOT NULL PRIMARY KEY,
	idJugador INTEGER NOT NULL,
	idÁrbitro INTEGER NOT NULL,
	idPartido INTEGER NOT NULL,
	idTipoDeFalta INTEGER NOT NULL,
	tiempo INTEGER NOT NULL,
	
	FOREIGN KEY (idJugador) REFERENCES Jugadores(idPersona),
	FOREIGN KEY (idÁrbitro) REFERENCES Árbitros(idPersona),
	FOREIGN KEY (idPartido) REFERENCES Partidos(idPartido),
	FOREIGN KEY (idTipoDeFalta) REFERENCES TiposDeFaltas(idTipoDeFalta)
);

CREATE TABLE Traspasos (
	idTraspaso INTEGER NOT NULL PRIMARY KEY,
	idTipoDeTraspaso INTEGER NOT NULL,
	idEquipoQueRealiza INTEGER NOT NULL,
	idEquipoQueAcepta INTEGER NOT NULL,
	idJugador INTEGER NOT NULL,
	fechaRealización DATE NOT NULL,
	

	FOREIGN KEY (idTipoDeTraspaso) REFERENCES TiposDeTraspasos(idTipoDeTraspaso),
	FOREIGN KEY (idEquipoQueRealiza) REFERENCES Equipos(idEquipo),
	FOREIGN KEY (idEquipoQueAcepta) REFERENCES Equipos(idEquipo),
	FOREIGN KEY (idJugador) REFERENCES Jugadores(idPersona)
);

CREATE TABLE PremiosJugadores (
	idJugador INTEGER NOT NULL,
        idPremio INTEGER NOT NULL,
	fechaDeRecibimiento DATE NOT NULL,
	PRIMARY KEY(idJugador,idPremio),
	FOREIGN KEY (idJugador) REFERENCES Jugadores(idPersona),
	FOREIGN KEY (idPremio) REFERENCES Premios(idPremio)
);

CREATE TABLE Anotaciones (
	idAnotación INTEGER NOT NULL PRIMARY KEY,
	idJugador INTEGER NOT NULL,
	idTipoDeAnotación INTEGER NOT NULL,
	idPartido INTEGER NOT NULL,
	minuto TIME NOT NULL,
    intento BOOLEAN NOT NULL,
	
	FOREIGN KEY (idJugador) REFERENCES Jugadores(idPersona),
	FOREIGN KEY (idTipoDeAnotación) REFERENCES TiposDeAnotación (idTipoDeAnotación),
	FOREIGN KEY (idPartido) REFERENCES Partidos(idPartido)
);

CREATE TABLE Entrenadores (
	idPersona INTEGER NOT NULL PRIMARY KEY,
	esEntrenadorPrincipal BOOLEAN NOT NULL,
	idEquipo INTEGER NOT NULL,
	FOREIGN KEY (idPersona) REFERENCES Personas(idPersona),
	FOREIGN KEY (idEquipo) REFERENCES Equipos(idEquipo)
);

CREATE TABLE Asistentes (
	idAsistente INTEGER NOT NULL PRIMARY KEY,
	idEntrenador INTEGER NOT NULL,

	FOREIGN KEY (idAsistente) REFERENCES Personas(idPersona),
	FOREIGN KEY (idEntrenador) REFERENCES Entrenadores(idPersona)
);

CREATE TABLE Propietarios (
	idPropietario INTEGER NOT NULL PRIMARY KEY,
	idEquipo INTEGER NOT NULL,
	FOREIGN KEY (idPropietario) REFERENCES Personas(idPersona),
	FOREIGN KEY (idEquipo) REFERENCES Equipos(idEquipo)
);

CREATE TABLE TransmisionesPartidos (
	idPartido INTEGER NOT NULL,
	idCanalDeTransmisión INTEGER NOT NULL,
	PRIMARY KEY(idPartido, idCanalDeTransmisión),
	FOREIGN KEY (idPartido) REFERENCES Partidos(idPartido),
	FOREIGN KEY (idCanalDeTransmisión) REFERENCES CanalesDeTransmisión(idCanalDeTransmisión)
);

$$LANGUAGE plpgsql;
