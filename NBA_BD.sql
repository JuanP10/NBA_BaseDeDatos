CREATE TABLE Fases (
	idFase INTEGER NOT NULL PRIMARY KEY,
	nombre VARCHAR(255) NOT NULL
);

INSERT INTO Fases (idFase, nombre) VALUES  (1, 'Play-off');
INSERT INTO Fases (idFase, nombre) VALUES  (2, 'Play-in');
INSERT INTO Fases (idFase, nombre) VALUES  (3, 'Regular');


CREATE TABLE Conferencias (
	idConferencia INTEGER NOT NULL PRIMARY KEY,
	nombre VARCHAR(255) NOT NULL
);

INSERT INTO Conferencias (idConferencia, nombre) VALUES  (1, 'Este');
INSERT INTO Conferencias (idConferencia, nombre) VALUES  (2, 'Oeste');

CREATE TABLE Divisiones (
	idDivisión INTEGER NOT NULL PRIMARY KEY,
	nombre VARCHAR(255) NOT NULL,
	idConferencia INTEGER NOT NULL,
	FOREIGN KEY (idConferencia) REFERENCES Conferencias(idConferencia)
);

INSERT INTO Divisiones (idDivisión, nombre, idConferencia) VALUES  (1, 'Atlántico', '1');
INSERT INTO Divisiones (idDivisión, nombre, idConferencia) VALUES  (2, 'Noroeste', '2');
INSERT INTO Divisiones (idDivisión, nombre, idConferencia) VALUES  (3, 'Central', '1');
INSERT INTO Divisiones (idDivisión, nombre, idConferencia) VALUES  (4, 'Pacífico', '2');
INSERT INTO Divisiones (idDivisión, nombre, idConferencia) VALUES  (5, 'Sureste', '1');
INSERT INTO Divisiones (idDivisión, nombre, idConferencia) VALUES  (6, 'Suroeste', '2');

CREATE TABLE TiposDeCanales (
	idTipoDeCanal INTEGER NOT NULL PRIMARY KEY,
	nombre VARCHAR(255) NOT NULL
);

INSERT INTO TiposDeCanales (idTipoDeCanal, nombre) VALUES  (1, 'Televisión');
INSERT INTO TiposDeCanales (idTipoDeCanal, nombre) VALUES  (2, 'Online');


CREATE TABLE CanalesDeTransmisión (
	idCanalDeTransmisión INTEGER NOT NULL PRIMARY KEY,
	nombre VARCHAR(255) NOT NULL,
	idTipoDeCanal INTEGER NOT NULL,
	FOREIGN KEY (idTipoDeCanal) REFERENCES TiposDeCanales(idTipoDeCanal)
);



INSERT INTO CanalesDeTransmisión (idCanalDeTransmisión, nombre, idTipoDeCanal) VALUES  (1, 'ESPN', '1');
INSERT INTO CanalesDeTransmisión (idCanalDeTransmisión, nombre, idTipoDeCanal) VALUES  (2, 'Star+', '2');
INSERT INTO CanalesDeTransmisión (idCanalDeTransmisión, nombre, idTipoDeCanal) VALUES  (3, 'NBA TV', '1');
INSERT INTO CanalesDeTransmisión (idCanalDeTransmisión, nombre, idTipoDeCanal) VALUES  (4, 'NBA League Pass', '2');
INSERT INTO CanalesDeTransmisión (idCanalDeTransmisión, nombre, idTipoDeCanal) VALUES  (5, 'DIRECTV Sports', '1');
INSERT INTO CanalesDeTransmisión (idCanalDeTransmisión, nombre, idTipoDeCanal) VALUES  (6, 'TUDN', '1');
INSERT INTO CanalesDeTransmisión (idCanalDeTransmisión, nombre, idTipoDeCanal) VALUES  (7, 'Movistar+', '1');

CREATE TABLE Estados (
	idEstado INTEGER NOT NULL PRIMARY KEY,
	nombre VARCHAR(255) NOT NULL
);

INSERT INTO Estados (idEstado, nombre) VALUES  (1, 'Massachusetts');
INSERT INTO Estados (idEstado, nombre) VALUES  (2, 'New York');
INSERT INTO Estados (idEstado, nombre) VALUES  (3, 'Illinois');
INSERT INTO Estados (idEstado, nombre) VALUES  (4, 'Wisconsin');
INSERT INTO Estados (idEstado, nombre) VALUES  (5, 'Colorado');
INSERT INTO Estados (idEstado, nombre) VALUES  (6, 'Mineápolis');
INSERT INTO Estados (idEstado, nombre) VALUES  (7, 'California');
INSERT INTO Estados (idEstado, nombre) VALUES  (8, 'Arizona');
INSERT INTO Estados (idEstado, nombre) VALUES  (9, 'Georgia');
INSERT INTO Estados (idEstado, nombre) VALUES  (10, 'Florida');
INSERT INTO Estados (idEstado, nombre) VALUES  (11, 'Luisiana');
INSERT INTO Estados (idEstado, nombre) VALUES  (12, 'Texas');


CREATE TABLE Premios (
	idPremio INTEGER NOT NULL PRIMARY KEY,
	nombre VARCHAR(255) NOT NULL
);

INSERT INTO Premios (idPremio, nombre) VALUES  (1, 'Magic Johnson');
INSERT INTO Premios (idPremio, nombre) VALUES  (2, 'Jugador más deportivo');
INSERT INTO Premios (idPremio, nombre) VALUES  (3, 'Mejor compañero');
INSERT INTO Premios (idPremio, nombre) VALUES  (4, 'Mejor defensor');
INSERT INTO Premios (idPremio, nombre) VALUES  (5, 'Star Game');
INSERT INTO Premios (idPremio, nombre) VALUES  (6, 'MVP');

CREATE TABLE Países (
	idPaís INTEGER NOT NULL PRIMARY KEY,
	nombre VARCHAR(255) NOT NULL UNIQUE
	
);

INSERT INTO Países (idPaís, nombre) VALUES  (1, 'Venezuela');
INSERT INTO Países (idPaís, nombre) VALUES  (2, 'Uruguay');
INSERT INTO Países (idPaís, nombre) VALUES  (3, 'Uganda');
INSERT INTO Países (idPaís, nombre) VALUES  (4, 'Ucrania');
INSERT INTO Países (idPaís, nombre) VALUES  (5, 'Turquía');
INSERT INTO Países (idPaís, nombre) VALUES  (6, 'Trinidad y Tobago');
INSERT INTO Países (idPaís, nombre) VALUES  (7, 'Tanzania');
INSERT INTO Países (idPaís, nombre) VALUES  (8, 'Suiza');
INSERT INTO Países (idPaís, nombre) VALUES  (9, 'Suecia');
INSERT INTO Países (idPaís, nombre) VALUES  (10, 'Sudán del Sur');
INSERT INTO Países (idPaís, nombre) VALUES  (11, 'Sudán');
INSERT INTO Países (idPaís, nombre) VALUES  (12, 'Serbia');
INSERT INTO Países (idPaís, nombre) VALUES  (13, 'Senegal');
INSERT INTO Países (idPaís, nombre) VALUES  (14, 'Rusia');
INSERT INTO Países (idPaís, nombre) VALUES  (15, 'Rumania');
INSERT INTO Países (idPaís, nombre) VALUES  (16, 'República Dominicana');
INSERT INTO Países (idPaís, nombre) VALUES  (17, 'República Checa');
INSERT INTO Países (idPaís, nombre) VALUES  (18, 'Inglaterra');
INSERT INTO Países (idPaís, nombre) VALUES  (19, 'Escocia');
INSERT INTO Países (idPaís, nombre) VALUES  (20, 'Reino Unido');
INSERT INTO Países (idPaís, nombre) VALUES  (21, 'Puerto Rico');
INSERT INTO Países (idPaís, nombre) VALUES  (22, 'Portugal');
INSERT INTO Países (idPaís, nombre) VALUES  (23, 'Polonia');
INSERT INTO Países (idPaís, nombre) VALUES  (24, 'Panamá');
INSERT INTO Países (idPaís, nombre) VALUES  (25, 'Países Bajos');
INSERT INTO Países (idPaís, nombre) VALUES  (26, 'Nueva Zelanda');
INSERT INTO Países (idPaís, nombre) VALUES  (27, 'Noruega');
INSERT INTO Países (idPaís, nombre) VALUES  (28, 'Nigeria');
INSERT INTO Países (idPaís, nombre) VALUES  (29, 'Montenegro');
INSERT INTO Países (idPaís, nombre) VALUES  (30, 'México');
INSERT INTO Países (idPaís, nombre) VALUES  (31, 'Malí');
INSERT INTO Países (idPaís, nombre) VALUES  (32, 'Lituania');
INSERT INTO Países (idPaís, nombre) VALUES  (33, 'Libia');
INSERT INTO Países (idPaís, nombre) VALUES  (34, 'Líbano');
INSERT INTO Países (idPaís, nombre) VALUES  (35, 'Letonia');
INSERT INTO Países (idPaís, nombre) VALUES  (36, 'Japón');
INSERT INTO Países (idPaís, nombre) VALUES  (37, 'Jamaica');
INSERT INTO Países (idPaís, nombre) VALUES  (38, 'Italia');
INSERT INTO Países (idPaís, nombre) VALUES  (39, 'Israel');
INSERT INTO Países (idPaís, nombre) VALUES  (40, 'Islandia');
INSERT INTO Países (idPaís, nombre) VALUES  (41, 'Irlanda');
INSERT INTO Países (idPaís, nombre) VALUES  (42, 'Irán Indonesia');
INSERT INTO Países (idPaís, nombre) VALUES  (43, 'Hungría');
INSERT INTO Países (idPaís, nombre) VALUES  (44, 'Haití');
INSERT INTO Países (idPaís, nombre) VALUES  (45, 'Guyana');
INSERT INTO Países (idPaís, nombre) VALUES  (46, 'Guinea');
INSERT INTO Países (idPaís, nombre) VALUES  (47, 'Grecia');
INSERT INTO Países (idPaís, nombre) VALUES  (48, 'Ghana');
INSERT INTO Países (idPaís, nombre) VALUES  (49, 'Georgia');
INSERT INTO Países (idPaís, nombre) VALUES  (50, 'Francia');
INSERT INTO Países (idPaís, nombre) VALUES  (51, 'Finlandia');
INSERT INTO Países (idPaís, nombre) VALUES  (52, 'Filipinas');
INSERT INTO Países (idPaís, nombre) VALUES  (53, 'Estonia');
INSERT INTO Países (idPaís, nombre) VALUES  (54, 'Estados Unidos');
INSERT INTO Países (idPaís, nombre) VALUES  (55, 'España');
INSERT INTO Países (idPaís, nombre) VALUES  (56, 'Eslovenia');
INSERT INTO Países (idPaís, nombre) VALUES  (57, 'Eslovaquia');
INSERT INTO Países (idPaís, nombre) VALUES  (58, 'Egipto');
INSERT INTO Países (idPaís, nombre) VALUES  (59, 'Dominica');
INSERT INTO Países (idPaís, nombre) VALUES  (60, 'Cuba');
INSERT INTO Países (idPaís, nombre) VALUES  (61, 'Croacia');
INSERT INTO Países (idPaís, nombre) VALUES  (62, 'Costa de Marfil');
INSERT INTO Países (idPaís, nombre) VALUES  (63, 'Corea del Sur');
INSERT INTO Países (idPaís, nombre) VALUES  (64, 'Colombia');
INSERT INTO Países (idPaís, nombre) VALUES  (65, 'China');
INSERT INTO Países (idPaís, nombre) VALUES  (66, 'Catar');
INSERT INTO Países (idPaís, nombre) VALUES  (67, 'Canadá');
INSERT INTO Países (idPaís, nombre) VALUES  (68, 'Camerún');
INSERT INTO Países (idPaís, nombre) VALUES  (69, 'Cabo Verde');
INSERT INTO Países (idPaís, nombre) VALUES  (70, 'Bulgaria');
INSERT INTO Países (idPaís, nombre) VALUES  (71, 'Brasil');
INSERT INTO Países (idPaís, nombre) VALUES  (72, 'Bolivia');
INSERT INTO Países (idPaís, nombre) VALUES  (73, 'Bielorrusia');
INSERT INTO Países (idPaís, nombre) VALUES  (74, 'Belice');
INSERT INTO Países (idPaís, nombre) VALUES  (75, 'Bélgica');
INSERT INTO Países (idPaís, nombre) VALUES  (76, 'Bahamas');
INSERT INTO Países (idPaís, nombre) VALUES  (77, 'Austria');
INSERT INTO Países (idPaís, nombre) VALUES  (78, 'Australia');
INSERT INTO Países (idPaís, nombre) VALUES  (79, 'Argentina');
INSERT INTO Países (idPaís, nombre) VALUES  (80, 'Angola');
INSERT INTO Países (idPaís, nombre) VALUES  (81, 'Alemania');


CREATE TABLE Ciudades (
	idCiudad INTEGER NOT NULL PRIMARY KEY,
	nombre VARCHAR(255) NOT NULL,
	idPaís INTEGER NOT NULL,
	idEstado INTEGER,

	FOREIGN KEY (idPaís) REFERENCES Países(idPaís),
	FOREIGN KEY (idEstado) REFERENCES Estados(idEstado)
);

INSERT INTO Ciudades (idCiudad, nombre, idPaís, idEstado) VALUES  (1, 'Boston', '3', '1');
INSERT INTO Ciudades (idCiudad, nombre, idPaís, idEstado) VALUES  (2, 'New York', '7', '7');
INSERT INTO Ciudades (idCiudad, nombre, idPaís, idEstado) VALUES  (3, 'Chicago', '19', '10');
INSERT INTO Ciudades (idCiudad, nombre, idPaís, idEstado) VALUES  (4, 'Milwaukee', '23', '4');
INSERT INTO Ciudades (idCiudad, nombre, idPaís, idEstado) VALUES  (5, 'Denver', '12', '2');
INSERT INTO Ciudades (idCiudad, nombre, idPaís, idEstado) VALUES  (6, 'Minnesota', '4', '12');
INSERT INTO Ciudades (idCiudad, nombre, idPaís, idEstado) VALUES  (7, 'Los Angeles', '11', '6');
INSERT INTO Ciudades (idCiudad, nombre, idPaís, idEstado) VALUES  (8, 'Phoenix', '18', '3');
INSERT INTO Ciudades (idCiudad, nombre, idPaís, idEstado) VALUES  (9, 'Atlanta', '22', '9');
INSERT INTO Ciudades (idCiudad, nombre, idPaís, idEstado) VALUES  (10, 'Miami', '2', '8');
INSERT INTO Ciudades (idCiudad, nombre, idPaís, idEstado) VALUES  (11, 'New Orleans Dallas', '9', '11');
INSERT INTO Ciudades (idCiudad, nombre, idPaís, idEstado) VALUES  (12, 'Dallas', '10', '10');
INSERT INTO Ciudades (idCiudad, nombre, idPaís, idEstado) VALUES  (13, 'Mequinez', '4', '7');
INSERT INTO Ciudades (idCiudad, nombre, idPaís, idEstado) VALUES  (14, 'Breslavia', '14', '6');
INSERT INTO Ciudades (idCiudad, nombre, idPaís, idEstado) VALUES  (15, 'Lille', '13', '4');
INSERT INTO Ciudades (idCiudad, nombre, idPaís, idEstado) VALUES  (16, 'Libanan', '6', '9');
INSERT INTO Ciudades (idCiudad, nombre, idPaís, idEstado) VALUES  (17, 'Kalampáka', '1', '1');
INSERT INTO Ciudades (idCiudad, nombre, idPaís, idEstado) VALUES  (18, 'Ibiporã', '11', '2');
INSERT INTO Ciudades (idCiudad, nombre, idPaís, idEstado) VALUES  (19, 'Zadar', '12', '10');
INSERT INTO Ciudades (idCiudad, nombre, idPaís, idEstado) VALUES  (20, 'Wenshui', '22', '7');
INSERT INTO Ciudades (idCiudad, nombre, idPaís, idEstado) VALUES  (21, 'San Cristóbal', '16', '12');
INSERT INTO Ciudades (idCiudad, nombre, idPaís, idEstado) VALUES  (22, 'Lebedyn', '2', '11');
INSERT INTO Ciudades (idCiudad, nombre, idPaís, idEstado) VALUES  (23, 'Limbaan', '20', '3');
INSERT INTO Ciudades (idCiudad, nombre, idPaís, idEstado) VALUES  (24, 'Kazán', '19', '1');
INSERT INTO Ciudades (idCiudad, nombre, idPaís, idEstado) VALUES  (25, 'Bukowiec', '8', '10');
INSERT INTO Ciudades (idCiudad, nombre, idPaís, idEstado) VALUES  (26, 'Bombarral', '24', '5');
INSERT INTO Ciudades (idCiudad, nombre, idPaís, idEstado) VALUES  (27, 'Mallorquín', '15', '8');
INSERT INTO Ciudades (idCiudad, nombre, idPaís, idEstado) VALUES  (28, 'Verona', '3', '10');
INSERT INTO Ciudades (idCiudad, nombre, idPaís, idEstado) VALUES  (29, 'Corinto', '9', '11');
INSERT INTO Ciudades (idCiudad, nombre, idPaís, idEstado) VALUES  (30, 'Bilbao', '5', '4');
INSERT INTO Ciudades (idCiudad, nombre, idPaís, idEstado) VALUES  (31, 'Cevicos', '17', '8');
INSERT INTO Ciudades (idCiudad, nombre, idPaís, idEstado) VALUES  (32, 'Ketanen', '7', '3');
INSERT INTO Ciudades (idCiudad, nombre, idPaís, idEstado) VALUES  (33, 'Jialu', '23', '11');
INSERT INTO Ciudades (idCiudad, nombre, idPaís, idEstado) VALUES  (34, 'Sendung', '21', '2');
INSERT INTO Ciudades (idCiudad, nombre, idPaís, idEstado) VALUES  (35, 'Alenquer', '18', '7');
INSERT INTO Ciudades (idCiudad, nombre, idPaís, idEstado) VALUES  (36, 'Haninge', '10', '2');
INSERT INTO Ciudades (idCiudad, nombre, idPaís, idEstado) VALUES  (37, 'Rennes', '24', '12');
INSERT INTO Ciudades (idCiudad, nombre, idPaís, idEstado) VALUES  (38, 'Kajaani', '2', '9');
INSERT INTO Ciudades (idCiudad, nombre, idPaís, idEstado) VALUES  (39, 'Lyon', '21', '1');
INSERT INTO Ciudades (idCiudad, nombre, idPaís, idEstado) VALUES  (40, 'Toulouse', '4', '5');
INSERT INTO Ciudades (idCiudad, nombre, idPaís, idEstado) VALUES  (41, 'Sanshui', '13', '6');
INSERT INTO Ciudades (idCiudad, nombre, idPaís, idEstado) VALUES  (42, 'Niza', '3', '5');

CREATE TABLE Posiciones (
	idPosición INTEGER NOT NULL PRIMARY KEY,
	nombre VARCHAR(255) NOT NULL
);

INSERT INTO Posiciones (idPosición, nombre) VALUES  (1, 'Base');
INSERT INTO Posiciones (idPosición, nombre) VALUES  (2, 'Escolta');
INSERT INTO Posiciones (idPosición, nombre) VALUES  (3, 'Alero');
INSERT INTO Posiciones (idPosición, nombre) VALUES  (4, 'Ala-Pivot');
INSERT INTO Posiciones (idPosición, nombre) VALUES  (5, 'Pivot');

CREATE TABLE TiposDeFaltas (
	idTipoDeFalta INTEGER NOT NULL PRIMARY KEY,
	nombre VARCHAR(255) NOT NULL
);

INSERT INTO TiposDeFaltas (idTipoDeFalta, nombre) VALUES  (1, 'Personal');
INSERT INTO TiposDeFaltas (idTipoDeFalta, nombre) VALUES  (2, 'En ataque');
INSERT INTO TiposDeFaltas (idTipoDeFalta, nombre) VALUES  (3, 'Descalificante');
INSERT INTO TiposDeFaltas (idTipoDeFalta, nombre) VALUES  (4, 'Técnica');
INSERT INTO TiposDeFaltas (idTipoDeFalta, nombre) VALUES  (5, 'Antideportiva');

CREATE TABLE TiposDeAnotación (
	idTipoDeAnotación INTEGER NOT NULL PRIMARY KEY,
	nombre VARCHAR(255) NOT NULL,
	puntos INTEGER NOT NULL
	
);

INSERT INTO TiposDeAnotación (idTipoDeAnotación, nombre, puntos) VALUES  (1, 'Tiro libre', 1);
INSERT INTO TiposDeAnotación (idTipoDeAnotación, nombre, puntos) VALUES  (2, 'Tiro de campo en línea', 2);
INSERT INTO TiposDeAnotación (idTipoDeAnotación, nombre, puntos) VALUES  (3, 'Tiro de campo fuera de línea', 3);


CREATE TABLE TiposDeTraspasos (
	idTipoDeTraspaso INTEGER NOT NULL PRIMARY KEY,
	Nombre VARCHAR(255) NOT NULL
);

INSERT INTO TiposDeTraspasos (idTipoDeTraspaso, nombre) VALUES  (1, 'Compra');
INSERT INTO TiposDeTraspasos (idTipoDeTraspaso, nombre) VALUES  (2, 'Intercambio');
INSERT INTO TiposDeTraspasos (idTipoDeTraspaso, nombre) VALUES  (3, 'Regreso');


CREATE TABLE Instituciones (
	idInstitución INTEGER NOT NULL PRIMARY KEY,
	nombre VARCHAR(255) NOT NULL,
	idCiudad INTEGER NOT NULL,
	FOREIGN KEY (idCiudad) REFERENCES Ciudades(idCiudad)
);

INSERT INTO Instituciones (idInstitución, nombre, idCiudad) VALUES  (1, 'Toughjoyfax', '23');
INSERT INTO Instituciones (idInstitución, nombre, idCiudad) VALUES  (2, 'Sonsing', '5');
INSERT INTO Instituciones (idInstitución, nombre, idCiudad) VALUES  (3, 'Konklux', '3');
INSERT INTO Instituciones (idInstitución, nombre, idCiudad) VALUES  (4, 'Cardify', '15');
INSERT INTO Instituciones (idInstitución, nombre, idCiudad) VALUES  (5, 'Zontrax', '6');
INSERT INTO Instituciones (idInstitución, nombre, idCiudad) VALUES  (6, 'Greenlam', '16');
INSERT INTO Instituciones (idInstitución, nombre, idCiudad) VALUES  (7, 'Bamity', '21');
INSERT INTO Instituciones (idInstitución, nombre, idCiudad) VALUES  (8, 'Job', '30');
INSERT INTO Instituciones (idInstitución, nombre, idCiudad) VALUES  (9, 'Tampflex', '29');
INSERT INTO Instituciones (idInstitución, nombre, idCiudad) VALUES  (10, 'Rank', '26');
INSERT INTO Instituciones (idInstitución, nombre, idCiudad) VALUES  (11, 'Ventosanzap', '1');
INSERT INTO Instituciones (idInstitución, nombre, idCiudad) VALUES  (12, 'Cardify', '12');
INSERT INTO Instituciones (idInstitución, nombre, idCiudad) VALUES  (13, 'Cookley', '14');
INSERT INTO Instituciones (idInstitución, nombre, idCiudad) VALUES  (14, 'Regrant', '4');
INSERT INTO Instituciones (idInstitución, nombre, idCiudad) VALUES  (15, 'Stringtough', '11');
INSERT INTO Instituciones (idInstitución, nombre, idCiudad) VALUES  (16, 'Daltfresh', '17');
INSERT INTO Instituciones (idInstitución, nombre, idCiudad) VALUES  (17, 'Veribet', '27');
INSERT INTO Instituciones (idInstitución, nombre, idCiudad) VALUES  (18, 'Stringtough', '2');
INSERT INTO Instituciones (idInstitución, nombre, idCiudad) VALUES  (19, 'Wrapsafe', '22');
INSERT INTO Instituciones (idInstitución, nombre, idCiudad) VALUES  (20, 'Voyatouch', '8');


CREATE TABLE Personas (
	idPersona INTEGER NOT NULL PRIMARY KEY,
	primerNombre VARCHAR(255) NOT NULL,
	segundoNombre VARCHAR(255),
	primerApellido VARCHAR(255) NOT NULL,
	segundoApellido VARCHAR(255)
	
);
INSERT INTO Personas (idPersona, primerNombre, segundoNombre, primerApellido, segundoApellido) VALUES  (1, 'Salvatore', 'Ritchie', 'Dinjes', 'Tylor');
INSERT INTO Personas (idPersona, primerNombre, segundoNombre, primerApellido, segundoApellido) VALUES  (2, 'Waring', 'Rollins', 'McGahern', 'Ramelot');
INSERT INTO Personas (idPersona, primerNombre, segundoNombre, primerApellido, segundoApellido) VALUES  (3, 'Morgun', 'Sarge', 'Thresher', 'Ussher');
INSERT INTO Personas (idPersona, primerNombre, segundoNombre, primerApellido, segundoApellido) VALUES  (4, 'Pattie', 'Raimundo', 'Heditch', 'Irvine');
INSERT INTO Personas (idPersona, primerNombre, segundoNombre, primerApellido, segundoApellido) VALUES  (5, 'Marmaduke', 'Cris', 'Stowgill', 'Garber');
INSERT INTO Personas (idPersona, primerNombre, segundoNombre, primerApellido, segundoApellido) VALUES  (6, 'Hunter', 'Silvanus', 'Brauner', 'Simeoli');
INSERT INTO Personas (idPersona, primerNombre, segundoNombre, primerApellido, segundoApellido) VALUES  (7, 'Ram', 'Esteban', 'Neiland', 'Marginson');
INSERT INTO Personas (idPersona, primerNombre, segundoNombre, primerApellido, segundoApellido) VALUES  (8, 'Eal', 'Sigismundo', 'Peel', 'Halhead');
INSERT INTO Personas (idPersona, primerNombre, segundoNombre, primerApellido, segundoApellido) VALUES  (9, 'Putnem', 'Desmund', 'Huitt', 'Franks');
INSERT INTO Personas (idPersona, primerNombre, segundoNombre, primerApellido, segundoApellido) VALUES  (10, 'Giselbert', 'Karlik', 'Symcoxe', 'Stittle');
INSERT INTO Personas (idPersona, primerNombre, segundoNombre, primerApellido, segundoApellido) VALUES  (11, 'Maurise', 'Alair', 'Tinman', 'Cresswell');
INSERT INTO Personas (idPersona, primerNombre, segundoNombre, primerApellido, segundoApellido) VALUES  (12, 'Giacomo', 'Elvyn', 'Winsom', 'Mozzi');
INSERT INTO Personas (idPersona, primerNombre, segundoNombre, primerApellido, segundoApellido) VALUES  (13, 'Hi', 'Dilly', 'Downing', 'Tiltman');
INSERT INTO Personas (idPersona, primerNombre, segundoNombre, primerApellido, segundoApellido) VALUES  (14, 'Gene', 'Herrick', 'Garfirth', 'Hussy');
INSERT INTO Personas (idPersona, primerNombre, segundoNombre, primerApellido, segundoApellido) VALUES  (15, 'West', 'Hammad', 'Willmott', 'Sygroves');
INSERT INTO Personas (idPersona, primerNombre, segundoNombre, primerApellido, segundoApellido) VALUES  (16, 'Ossie', 'Terencio', 'Harflete', 'Dranfield');
INSERT INTO Personas (idPersona, primerNombre, segundoNombre, primerApellido, segundoApellido) VALUES  (17, 'Teodoro', 'Tony', 'Warwicker', 'Casotti');
INSERT INTO Personas (idPersona, primerNombre, segundoNombre, primerApellido, segundoApellido) VALUES  (18, 'Lane', 'Elliott', 'Rotlauf', 'Kilpatrick');
INSERT INTO Personas (idPersona, primerNombre, segundoNombre, primerApellido, segundoApellido) VALUES  (19, 'Mario', 'Portie', 'Ceaser', 'Ackenson');
INSERT INTO Personas (idPersona, primerNombre, segundoNombre, primerApellido, segundoApellido) VALUES  (20, 'Yard', 'Gasper', 'Bulfield', 'Boydell');
INSERT INTO Personas (idPersona, primerNombre, segundoNombre, primerApellido, segundoApellido) VALUES  (21, 'Forest', 'Nye', 'Cloney', 'Kropach');
INSERT INTO Personas (idPersona, primerNombre, segundoNombre, primerApellido, segundoApellido) VALUES  (22, 'Hodge', 'Elvin', 'Collidge', 'Davidow');
INSERT INTO Personas (idPersona, primerNombre, segundoNombre, primerApellido, segundoApellido) VALUES  (23, 'Kristo', 'Saunders', 'Kundert', 'Arkwright');
INSERT INTO Personas (idPersona, primerNombre, segundoNombre, primerApellido, segundoApellido) VALUES  (24, 'Andres', 'Cal', 'Leed', 'Reis');
INSERT INTO Personas (idPersona, primerNombre, segundoNombre, primerApellido, segundoApellido) VALUES  (25, 'Benedicto', 'Spenser', 'McKinlay', 'Sarchwell');
INSERT INTO Personas (idPersona, primerNombre, segundoNombre, primerApellido, segundoApellido) VALUES  (26, 'Dunstan', 'Arlin', 'Canacott', 'Venables');
INSERT INTO Personas (idPersona, primerNombre, segundoNombre, primerApellido, segundoApellido) VALUES  (27, 'Franklyn', 'Hal', 'Shead', 'Kemball');
INSERT INTO Personas (idPersona, primerNombre, segundoNombre, primerApellido, segundoApellido) VALUES  (28, 'Emile', 'Darrell', 'Trappe', 'Darree');
INSERT INTO Personas (idPersona, primerNombre, segundoNombre, primerApellido, segundoApellido) VALUES  (29, 'Dennis', 'Gerardo', 'Trewin', 'Geaney');
INSERT INTO Personas (idPersona, primerNombre, segundoNombre, primerApellido, segundoApellido) VALUES  (30, 'Ellwood', 'Craggy', 'Caveill', 'Peaker');
INSERT INTO Personas (idPersona, primerNombre, segundoNombre, primerApellido, segundoApellido) VALUES  (31, 'Orson', 'Eduard', 'Askin', 'Southeran');
INSERT INTO Personas (idPersona, primerNombre, segundoNombre, primerApellido, segundoApellido) VALUES  (32, 'Montgomery', 'Der', 'Roubottom', 'Duffy');
INSERT INTO Personas (idPersona, primerNombre, segundoNombre, primerApellido, segundoApellido) VALUES  (33, 'Lem', 'Roarke', 'Minghi', 'Orpen');
INSERT INTO Personas (idPersona, primerNombre, segundoNombre, primerApellido, segundoApellido) VALUES  (34, 'Tynan', 'Mathias', 'Canete', 'Henriquet');
INSERT INTO Personas (idPersona, primerNombre, segundoNombre, primerApellido, segundoApellido) VALUES  (35, 'Hal', 'Levi', 'Seamon', 'Barthelet');
INSERT INTO Personas (idPersona, primerNombre, segundoNombre, primerApellido, segundoApellido) VALUES  (36, 'Kilian', 'Myer', 'Gabb', 'Venney');
INSERT INTO Personas (idPersona, primerNombre, segundoNombre, primerApellido, segundoApellido) VALUES  (37, 'Karlens', 'Niki', 'Pighills', 'Harle');
INSERT INTO Personas (idPersona, primerNombre, segundoNombre, primerApellido, segundoApellido) VALUES  (38, 'Brandtr', 'Buckie', 'Ducarne', 'June');
INSERT INTO Personas (idPersona, primerNombre, segundoNombre, primerApellido, segundoApellido) VALUES  (39, 'Demetris', 'Chrissy', 'Emerine', 'Epilet');
INSERT INTO Personas (idPersona, primerNombre, segundoNombre, primerApellido, segundoApellido) VALUES  (40, 'Lorenzo', 'Chrisse', 'Lyford', 'Sheeres');
INSERT INTO Personas (idPersona, primerNombre, segundoNombre, primerApellido, segundoApellido) VALUES  (41, 'Bradford', 'Baird', 'Keson', 'Bedford');
INSERT INTO Personas (idPersona, primerNombre, segundoNombre, primerApellido, segundoApellido) VALUES  (42, 'Marve', 'Barry', 'Stother', 'Deighton');
INSERT INTO Personas (idPersona, primerNombre, segundoNombre, primerApellido, segundoApellido) VALUES  (43, 'Brant', 'Bartholomeo', 'Imlock', 'Kiraly');
INSERT INTO Personas (idPersona, primerNombre, segundoNombre, primerApellido, segundoApellido) VALUES  (44, 'Hersch', 'Jarvis', 'Cliff', 'Prangnell');
INSERT INTO Personas (idPersona, primerNombre, segundoNombre, primerApellido, segundoApellido) VALUES  (45, 'Lamond', 'Olag', 'Ingerson', 'Lomasna');
INSERT INTO Personas (idPersona, primerNombre, segundoNombre, primerApellido, segundoApellido) VALUES  (46, 'Barry', 'Berkeley', 'Gheraldi', 'Dobney');
INSERT INTO Personas (idPersona, primerNombre, segundoNombre, primerApellido, segundoApellido) VALUES  (47, 'Gaston', 'Saul', 'Ronisch', 'O''Cosgra');
INSERT INTO Personas (idPersona, primerNombre, segundoNombre, primerApellido, segundoApellido) VALUES  (48, 'Virge', 'Obediah', 'Ruslinge', 'Meers');
INSERT INTO Personas (idPersona, primerNombre, segundoNombre, primerApellido, segundoApellido) VALUES  (49, 'Fidel', 'Roberto', 'Barcke', 'Woolen');
INSERT INTO Personas (idPersona, primerNombre, segundoNombre, primerApellido, segundoApellido) VALUES  (50, 'Wilhelm', 'Kiley', 'Attree', 'Linden');
INSERT INTO Personas (idPersona, primerNombre, segundoNombre, primerApellido, segundoApellido) VALUES  (51, 'Adham', 'Bastian', 'Clappson', 'Ovell');
INSERT INTO Personas (idPersona, primerNombre, segundoNombre, primerApellido, segundoApellido) VALUES  (52, 'Cos', 'Ron', 'Aitkenhead', 'Seager');
INSERT INTO Personas (idPersona, primerNombre, segundoNombre, primerApellido, segundoApellido) VALUES  (53, 'Seymour', 'null', 'Muncie', 'Trevaskus');
INSERT INTO Personas (idPersona, primerNombre, segundoNombre, primerApellido, segundoApellido) VALUES  (54, 'Cesaro', 'Bo', 'Wiggington', 'Dornin');
INSERT INTO Personas (idPersona, primerNombre, segundoNombre, primerApellido, segundoApellido) VALUES  (55, 'Corney', 'Bank', 'Grist', 'Treend');
INSERT INTO Personas (idPersona, primerNombre, segundoNombre, primerApellido, segundoApellido) VALUES  (56, 'Leonid', 'Osmond', 'Wash', 'Collyns');
INSERT INTO Personas (idPersona, primerNombre, segundoNombre, primerApellido, segundoApellido) VALUES  (57, 'Nikos', 'Shelby', 'Eldrid', 'Giblin');
INSERT INTO Personas (idPersona, primerNombre, segundoNombre, primerApellido, segundoApellido) VALUES  (58, 'Nappy', 'Flory', 'Segges', 'Santore');
INSERT INTO Personas (idPersona, primerNombre, segundoNombre, primerApellido, segundoApellido) VALUES  (59, 'Gordon', 'null', 'Napier', 'Dudson');
INSERT INTO Personas (idPersona, primerNombre, segundoNombre, primerApellido, segundoApellido) VALUES  (60, 'Royal', 'Herve', 'Danson', 'Fairham');
INSERT INTO Personas (idPersona, primerNombre, segundoNombre, primerApellido, segundoApellido) VALUES  (61, 'Ancell', 'null', 'Collens', 'O''Glessane');
INSERT INTO Personas (idPersona, primerNombre, segundoNombre, primerApellido, segundoApellido) VALUES  (62, 'Clarance', 'null', 'Faill', 'Cowins');
INSERT INTO Personas (idPersona, primerNombre, segundoNombre, primerApellido, segundoApellido) VALUES  (63, 'Michael', 'Donovan', 'Wilce', 'Grundle');
INSERT INTO Personas (idPersona, primerNombre, segundoNombre, primerApellido, segundoApellido) VALUES  (64, 'Jarrad', 'Kent', 'Semonin', 'Cleynman');
INSERT INTO Personas (idPersona, primerNombre, segundoNombre, primerApellido, segundoApellido) VALUES  (65, 'Greggory', 'Kevin', 'Sawl', 'Kilalea');
INSERT INTO Personas (idPersona, primerNombre, segundoNombre, primerApellido, segundoApellido) VALUES  (66, 'Pall', 'Manfred', 'Gabe', 'Rojahn');
INSERT INTO Personas (idPersona, primerNombre, segundoNombre, primerApellido, segundoApellido) VALUES  (67, 'Rickey', 'null', 'Beedham', 'Pearse');
INSERT INTO Personas (idPersona, primerNombre, segundoNombre, primerApellido, segundoApellido) VALUES  (68, 'Franz', 'Nicolais', 'Williamson', 'Hagwood');
INSERT INTO Personas (idPersona, primerNombre, segundoNombre, primerApellido, segundoApellido) VALUES  (69, 'Ben', 'Kippar', 'Lavens', 'Trenouth');
INSERT INTO Personas (idPersona, primerNombre, segundoNombre, primerApellido, segundoApellido) VALUES  (70, 'Gayle', 'Warden', 'Kelf', 'Grassot');
INSERT INTO Personas (idPersona, primerNombre, segundoNombre, primerApellido, segundoApellido) VALUES  (71, 'Isaac', 'Glendon', 'Spurett', 'Frisch');
INSERT INTO Personas (idPersona, primerNombre, segundoNombre, primerApellido, segundoApellido) VALUES  (72, 'Waylen', 'null', 'Leglise', 'Dreakin');
INSERT INTO Personas (idPersona, primerNombre, segundoNombre, primerApellido, segundoApellido) VALUES  (73, 'Shelton', 'Dilan', 'Kanwell', 'Ashenhurst');
INSERT INTO Personas (idPersona, primerNombre, segundoNombre, primerApellido, segundoApellido) VALUES  (74, 'Jessey', 'Rollin', 'Mosedale', 'Portugal');
INSERT INTO Personas (idPersona, primerNombre, segundoNombre, primerApellido, segundoApellido) VALUES  (75, 'Boris', 'Marlo', 'Gaynes', 'McCromley');
INSERT INTO Personas (idPersona, primerNombre, segundoNombre, primerApellido, segundoApellido) VALUES  (76, 'Burr', 'Miller', 'Shucksmith', 'Poveleye');
INSERT INTO Personas (idPersona, primerNombre, segundoNombre, primerApellido, segundoApellido) VALUES  (77, 'Edd', 'Zachery', 'Benninger', 'Vamplus');
INSERT INTO Personas (idPersona, primerNombre, segundoNombre, primerApellido, segundoApellido) VALUES  (78, 'Ian', 'null', 'Toopin', 'Hardware');
INSERT INTO Personas (idPersona, primerNombre, segundoNombre, primerApellido, segundoApellido) VALUES  (79, 'Patrice', 'Raynor', 'Shimuk', 'Isakovitch');
INSERT INTO Personas (idPersona, primerNombre, segundoNombre, primerApellido, segundoApellido) VALUES  (80, 'Riccardo', 'Clement', 'Stoddart', 'Novak');
INSERT INTO Personas (idPersona, primerNombre, segundoNombre, primerApellido, segundoApellido) VALUES  (81, 'Alon', 'null', 'Whitelock', 'Blore');
INSERT INTO Personas (idPersona, primerNombre, segundoNombre, primerApellido, segundoApellido) VALUES  (82, 'Cullan', 'null', 'Camp', 'Gorst');
INSERT INTO Personas (idPersona, primerNombre, segundoNombre, primerApellido, segundoApellido) VALUES  (83, 'Vite', 'Demetris', 'O''Hingerty', 'Culligan');
INSERT INTO Personas (idPersona, primerNombre, segundoNombre, primerApellido, segundoApellido) VALUES  (84, 'Keefer', 'Claudio', 'Furnell', 'Waterhouse');
INSERT INTO Personas (idPersona, primerNombre, segundoNombre, primerApellido, segundoApellido) VALUES  (85, 'Roley', 'Orin', 'Thiem', 'Ballintyne');
INSERT INTO Personas (idPersona, primerNombre, segundoNombre, primerApellido, segundoApellido) VALUES  (86, 'Raddy', 'Ezra', 'Marte', 'Von Der Empten');
INSERT INTO Personas (idPersona, primerNombre, segundoNombre, primerApellido, segundoApellido) VALUES  (87, 'Allen', 'Devlin', 'McTiernan', 'Watkinson');
INSERT INTO Personas (idPersona, primerNombre, segundoNombre, primerApellido, segundoApellido) VALUES  (88, 'Val', 'null', 'Dulin', 'Grigson');
INSERT INTO Personas (idPersona, primerNombre, segundoNombre, primerApellido, segundoApellido) VALUES  (89, 'Renado', 'Archibaldo', 'Pol', 'Bjerkan');
INSERT INTO Personas (idPersona, primerNombre, segundoNombre, primerApellido, segundoApellido) VALUES  (90, 'Putnam', 'Ransom', 'Caherny', 'Ferrarese');
INSERT INTO Personas (idPersona, primerNombre, segundoNombre, primerApellido, segundoApellido) VALUES  (91, 'Carney', 'Nickola', 'Moultrie', 'Dreger');
INSERT INTO Personas (idPersona, primerNombre, segundoNombre, primerApellido, segundoApellido) VALUES  (92, 'Wilt', 'Elliot', 'Lambis', 'Tunnock');
INSERT INTO Personas (idPersona, primerNombre, segundoNombre, primerApellido, segundoApellido) VALUES  (93, 'Thibaud', 'Parrnell', 'Persitt', 'Habbert');
INSERT INTO Personas (idPersona, primerNombre, segundoNombre, primerApellido, segundoApellido) VALUES  (94, 'Meredith', 'Axel', 'Jaspar', 'Cecely');
INSERT INTO Personas (idPersona, primerNombre, segundoNombre, primerApellido, segundoApellido) VALUES  (95, 'Alric', 'Efrem', 'Gantz', 'Likely');
INSERT INTO Personas (idPersona, primerNombre, segundoNombre, primerApellido, segundoApellido) VALUES  (96, 'Kristo', 'Merrill', 'Seeking', 'Bevans');
INSERT INTO Personas (idPersona, primerNombre, segundoNombre, primerApellido, segundoApellido) VALUES  (97, 'Reggy', 'Nick', 'Barttrum', 'Cobain');
INSERT INTO Personas (idPersona, primerNombre, segundoNombre, primerApellido, segundoApellido) VALUES  (98, 'Zacharias', 'null', 'Indge', 'Herrema');
INSERT INTO Personas (idPersona, primerNombre, segundoNombre, primerApellido, segundoApellido) VALUES  (99, 'Clim', 'Stanislas', 'Bernaert', 'Kmiec');
INSERT INTO Personas (idPersona, primerNombre, segundoNombre, primerApellido, segundoApellido) VALUES  (100, 'Angeli', 'Gill', 'Cooley', 'Blick');
INSERT INTO Personas (idPersona, primerNombre, segundoNombre, primerApellido, segundoApellido) VALUES  (101, 'Geri', 'Krisha', 'Dearl', 'MacMillan');
INSERT INTO Personas (idPersona, primerNombre, segundoNombre, primerApellido, segundoApellido) VALUES  (102, 'Sutherland', 'null', 'Tarry', 'Daveridge');
INSERT INTO Personas (idPersona, primerNombre, segundoNombre, primerApellido, segundoApellido) VALUES  (103, 'Leicester', 'Jordan', 'Castellino', 'Welfair');
INSERT INTO Personas (idPersona, primerNombre, segundoNombre, primerApellido, segundoApellido) VALUES  (104, 'Farley', 'Jessie', 'Lamasna', 'Filyushkin');
INSERT INTO Personas (idPersona, primerNombre, segundoNombre, primerApellido, segundoApellido) VALUES  (105, 'Staford', 'Carlin', 'Towne', 'Fairholme');
INSERT INTO Personas (idPersona, primerNombre, segundoNombre, primerApellido, segundoApellido) VALUES  (106, 'Morton', 'null', 'Yarrow', 'Divisek');
INSERT INTO Personas (idPersona, primerNombre, segundoNombre, primerApellido, segundoApellido) VALUES  (107, 'Perry', 'Kevan', 'Gossan', 'Sebert');
INSERT INTO Personas (idPersona, primerNombre, segundoNombre, primerApellido, segundoApellido) VALUES  (108, 'Cordie', 'Brnaby', 'Thams', 'Han');
INSERT INTO Personas (idPersona, primerNombre, segundoNombre, primerApellido, segundoApellido) VALUES  (109, 'Richard', 'Julius', 'Tampin', 'Kirgan');
INSERT INTO Personas (idPersona, primerNombre, segundoNombre, primerApellido, segundoApellido) VALUES  (110, 'Munmro', 'Lorne', 'Lente', 'Hurrell');
INSERT INTO Personas (idPersona, primerNombre, segundoNombre, primerApellido, segundoApellido) VALUES  (111, 'Aldous', 'Layton', 'Oldaker', 'Rawlence');
INSERT INTO Personas (idPersona, primerNombre, segundoNombre, primerApellido, segundoApellido) VALUES  (112, 'Rip', 'Iosep', 'Ladd', 'Boyda');
INSERT INTO Personas (idPersona, primerNombre, segundoNombre, primerApellido, segundoApellido) VALUES  (113, 'Sinclair', 'null', 'Stit', 'Bagnold');
INSERT INTO Personas (idPersona, primerNombre, segundoNombre, primerApellido, segundoApellido) VALUES  (114, 'Enrico', 'Michal', 'Firebrace', 'Frawley');
INSERT INTO Personas (idPersona, primerNombre, segundoNombre, primerApellido, segundoApellido) VALUES  (115, 'Pasquale', 'null', 'Karleman', 'Ritchings');
INSERT INTO Personas (idPersona, primerNombre, segundoNombre, primerApellido, segundoApellido) VALUES  (116, 'Everett', 'Jamie', 'Vasyutkin', 'Goldsbury');
INSERT INTO Personas (idPersona, primerNombre, segundoNombre, primerApellido, segundoApellido) VALUES  (117, 'Brigham', 'Brennen', 'Holson', 'Sieve');
INSERT INTO Personas (idPersona, primerNombre, segundoNombre, primerApellido, segundoApellido) VALUES  (118, 'Dennet', 'Dalli', 'Filippazzo', 'Grinston');
INSERT INTO Personas (idPersona, primerNombre, segundoNombre, primerApellido, segundoApellido) VALUES  (119, 'Guilbert', 'Alwyn', 'Cawsby', 'Dysert');
INSERT INTO Personas (idPersona, primerNombre, segundoNombre, primerApellido, segundoApellido) VALUES  (120, 'Kliment', 'Kort', 'Hanshawe', 'Americi');
INSERT INTO Personas (idPersona, primerNombre, segundoNombre, primerApellido, segundoApellido) VALUES  (121, 'Rodd', 'Miner', 'Stit', 'Greiser');
INSERT INTO Personas (idPersona, primerNombre, segundoNombre, primerApellido, segundoApellido) VALUES  (122, 'Emmet', 'Mateo', 'Davison', 'Hanse');
INSERT INTO Personas (idPersona, primerNombre, segundoNombre, primerApellido, segundoApellido) VALUES  (123, 'Monti', 'Erl', 'McGaw', 'Tippler');
INSERT INTO Personas (idPersona, primerNombre, segundoNombre, primerApellido, segundoApellido) VALUES  (124, 'Ludwig', 'null', 'Penning', 'Tarbin');
INSERT INTO Personas (idPersona, primerNombre, segundoNombre, primerApellido, segundoApellido) VALUES  (125, 'Mason', 'Vick', 'Checchi', 'Ogden');
INSERT INTO Personas (idPersona, primerNombre, segundoNombre, primerApellido, segundoApellido) VALUES  (126, 'Neddy', 'Rurik', 'Horwell', 'Sunley');
INSERT INTO Personas (idPersona, primerNombre, segundoNombre, primerApellido, segundoApellido) VALUES  (127, 'Hobard', 'null', 'Nye', 'Dibner');
INSERT INTO Personas (idPersona, primerNombre, segundoNombre, primerApellido, segundoApellido) VALUES  (128, 'Jerri', 'null', 'Geydon', 'January');
INSERT INTO Personas (idPersona, primerNombre, segundoNombre, primerApellido, segundoApellido) VALUES  (129, 'Noble', 'Wolfgang', 'Calvard', 'Kenner');
INSERT INTO Personas (idPersona, primerNombre, segundoNombre, primerApellido, segundoApellido) VALUES  (130, 'Nealon', 'null', 'Pearlman', 'Collihole');
INSERT INTO Personas (idPersona, primerNombre, segundoNombre, primerApellido, segundoApellido) VALUES  (131, 'Levon', 'Winston', 'Szymonwicz', 'Piggins');
INSERT INTO Personas (idPersona, primerNombre, segundoNombre, primerApellido, segundoApellido) VALUES  (132, 'Mycah', 'Batholomew', 'Swinburn', 'Walster');
INSERT INTO Personas (idPersona, primerNombre, segundoNombre, primerApellido, segundoApellido) VALUES  (133, 'Lonny', 'Tony', 'Tattersdill', 'Mountcastle');
INSERT INTO Personas (idPersona, primerNombre, segundoNombre, primerApellido, segundoApellido) VALUES  (134, 'Klaus', 'Currie', 'Rippen', 'Eslie');
INSERT INTO Personas (idPersona, primerNombre, segundoNombre, primerApellido, segundoApellido) VALUES  (135, 'Shepperd', 'Marlon', 'Wild', 'Ryan');
INSERT INTO Personas (idPersona, primerNombre, segundoNombre, primerApellido, segundoApellido) VALUES  (136, 'Aldon', 'Regen', 'Trayte', 'Balmer');
INSERT INTO Personas (idPersona, primerNombre, segundoNombre, primerApellido, segundoApellido) VALUES  (137, 'Gasparo', 'null', 'Daubney', 'Wilbore');
INSERT INTO Personas (idPersona, primerNombre, segundoNombre, primerApellido, segundoApellido) VALUES  (138, 'Humbert', 'Flemming', 'Buzzing', 'Dufty');
INSERT INTO Personas (idPersona, primerNombre, segundoNombre, primerApellido, segundoApellido) VALUES  (139, 'Reed', 'Jereme', 'Denson', 'Koubek');
INSERT INTO Personas (idPersona, primerNombre, segundoNombre, primerApellido, segundoApellido) VALUES  (140, 'Bengt', 'Towney', 'Megahey', 'Gilbanks');
INSERT INTO Personas (idPersona, primerNombre, segundoNombre, primerApellido, segundoApellido) VALUES  (141, 'Lucian', 'Sherwin', 'Longman', 'Hannigane');
INSERT INTO Personas (idPersona, primerNombre, segundoNombre, primerApellido, segundoApellido) VALUES  (142, 'Skippie', 'Stanton', 'Daniello', 'Probat');
INSERT INTO Personas (idPersona, primerNombre, segundoNombre, primerApellido, segundoApellido) VALUES  (143, 'Humfrid', 'Sonny', 'Grzelewski', 'Havesides');
INSERT INTO Personas (idPersona, primerNombre, segundoNombre, primerApellido, segundoApellido) VALUES  (144, 'Shaun', 'Zach', 'Scammonden', 'Graser');
INSERT INTO Personas (idPersona, primerNombre, segundoNombre, primerApellido, segundoApellido) VALUES  (145, 'Raynor', 'Shamus', 'Bett', 'O''Shee');
INSERT INTO Personas (idPersona, primerNombre, segundoNombre, primerApellido, segundoApellido) VALUES  (146, 'Taylor', 'null', 'Collyns', 'Wild');

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

INSERT INTO Candidatos (idCandidato, altura, peso, fechaNacimiento, idPosición, idInstituciónProcedencia) VALUES  ('1', 185, 81.8, '3/8/1991', '3', '1');
INSERT INTO Candidatos (idCandidato, altura, peso, fechaNacimiento, idPosición, idInstituciónProcedencia) VALUES  ('2', 203, 97.2, '10/4/1994' , '4', '12');
INSERT INTO Candidatos (idCandidato, altura, peso, fechaNacimiento, idPosición, idInstituciónProcedencia)
VALUES ('3', 191, 162.3, TO_DATE('7/6/2001', 'DD/MM/YYYY'), '5', '11');

INSERT INTO Candidatos (idCandidato, altura, peso, fechaNacimiento, idPosición, idInstituciónProcedencia)
VALUES ('4', 196, 123.4, TO_DATE('28/6/2000', 'DD/MM/YYYY'), '2', '3');

INSERT INTO Candidatos (idCandidato, altura, peso, fechaNacimiento, idPosición, idInstituciónProcedencia)
VALUES ('5', 203, 145.6, TO_DATE('25/5/1993', 'DD/MM/YYYY'), '1', '9');

INSERT INTO Candidatos (idCandidato, altura, peso, fechaNacimiento, idPosición, idInstituciónProcedencia)
VALUES ('6', 197, 113.0, TO_DATE('29/12/1999', 'DD/MM/YYYY'), '4', '13');

INSERT INTO Candidatos (idCandidato, altura, peso, fechaNacimiento, idPosición, idInstituciónProcedencia)
VALUES ('7', 203, 141.8, TO_DATE('2/7/1998', 'DD/MM/YYYY'), '3', '8');

INSERT INTO Candidatos (idCandidato, altura, peso, fechaNacimiento, idPosición, idInstituciónProcedencia)
VALUES ('8', 215, 156.8, TO_DATE('15/5/1994', 'DD/MM/YYYY'), '5', '6');

INSERT INTO Candidatos (idCandidato, altura, peso, fechaNacimiento, idPosición, idInstituciónProcedencia)
VALUES ('9', 209, 103.0, TO_DATE('7/10/1999', 'DD/MM/YYYY'), '2', '15');

INSERT INTO Candidatos (idCandidato, altura, peso, fechaNacimiento, idPosición, idInstituciónProcedencia)
VALUES ('10', 186, 115.8, TO_DATE('20/9/1999', 'DD/MM/YYYY'), '1', '10');

INSERT INTO Candidatos (idCandidato, altura, peso, fechaNacimiento, idPosición, idInstituciónProcedencia)
VALUES ('11', 205, 107.3, TO_DATE('5/9/2003', 'DD/MM/YYYY'), '3', '5');

INSERT INTO Candidatos (idCandidato, altura, peso, fechaNacimiento, idPosición, idInstituciónProcedencia)
VALUES ('12', 200, 137.4, TO_DATE('22/9/1998', 'DD/MM/YYYY'), '4', '4');

INSERT INTO Candidatos (idCandidato, altura, peso, fechaNacimiento, idPosición, idInstituciónProcedencia)
VALUES ('13', 218, 110.8, TO_DATE('26/10/2000', 'DD/MM/YYYY'), '2', '7');

INSERT INTO Candidatos (idCandidato, altura, peso, fechaNacimiento, idPosición, idInstituciónProcedencia)
VALUES ('14', 184, 162.2, TO_DATE('25/12/1998', 'DD/MM/YYYY'), '5', '2');

INSERT INTO Candidatos (idCandidato, altura, peso, fechaNacimiento, idPosición, idInstituciónProcedencia)
VALUES ('15', 217, 108.9, TO_DATE('30/8/1997', 'DD/MM/YYYY'), '1', '14');

INSERT INTO Candidatos (idCandidato, altura, peso, fechaNacimiento, idPosición, idInstituciónProcedencia)
VALUES ('16', 186, 134.2, TO_DATE('1/10/2001', 'DD/MM/YYYY'), '2', '5');


CREATE TABLE Pruebas (
	idPrueba INTEGER NOT NULL PRIMARY KEY,
	nombre VARCHAR(255) NOT NULL
);

INSERT INTO Pruebas (idPrueba, nombre) VALUES  (1, 'Salto vertical de pie');
INSERT INTO Pruebas (idPrueba, nombre) VALUES  (2, 'Salto vertical máximo');
INSERT INTO Pruebas (idPrueba, nombre) VALUES  (3, 'Carrera de lanzadera');
INSERT INTO Pruebas (idPrueba, nombre) VALUES  (4, 'Agilidad de carril');
INSERT INTO Pruebas (idPrueba, nombre) VALUES  (5, 'Sprint de tres cuartos');


CREATE TABLE ResultadosPruebas (
	idPrueba INTEGER NOT NULL,
	idCandidato INTEGER NOT NULL,
	resultado INTEGER NOT NULL,

	PRIMARY KEY (idPrueba, idCandidato),
	FOREIGN KEY (idPrueba) REFERENCES Pruebas(idPrueba),
	FOREIGN KEY (idCandidato) REFERENCES Candidatos(idCandidato)
);

INSERT INTO ResultadosPruebas (idPrueba, idCandidato, resultado) VALUES  ('1', '1', 7.23);
INSERT INTO ResultadosPruebas (idPrueba, idCandidato, resultado) VALUES  ('2', '2', 2.05);
INSERT INTO ResultadosPruebas (idPrueba, idCandidato, resultado) VALUES  ('3', '3', 8.63);
INSERT INTO ResultadosPruebas (idPrueba, idCandidato, resultado) VALUES  ('4', '4', 6.9);
INSERT INTO ResultadosPruebas (idPrueba, idCandidato, resultado) VALUES  ('5', '5', 8.71);
INSERT INTO ResultadosPruebas (idPrueba, idCandidato, resultado) VALUES  ('1', '6', 7.27);
INSERT INTO ResultadosPruebas (idPrueba, idCandidato, resultado) VALUES  ('2', '7', 8.0);
INSERT INTO ResultadosPruebas (idPrueba, idCandidato, resultado) VALUES  ('3', '8', 9.89);
INSERT INTO ResultadosPruebas (idPrueba, idCandidato, resultado) VALUES  ('4', '9', 9.12);
INSERT INTO ResultadosPruebas (idPrueba, idCandidato, resultado) VALUES  ('5', '10', 2.47);
INSERT INTO ResultadosPruebas (idPrueba, idCandidato, resultado) VALUES  ('1', '11', 8.06);
INSERT INTO ResultadosPruebas (idPrueba, idCandidato, resultado) VALUES  ('2', '12', 8.88);
INSERT INTO ResultadosPruebas (idPrueba, idCandidato, resultado) VALUES  ('3', '13', 5.79);
INSERT INTO ResultadosPruebas (idPrueba, idCandidato, resultado) VALUES  ('4', '14', 3.02);
INSERT INTO ResultadosPruebas (idPrueba, idCandidato, resultado) VALUES  ('5', '15', 6.2);
INSERT INTO ResultadosPruebas (idPrueba, idCandidato, resultado) VALUES  ('1', '16', 5.82);
INSERT INTO ResultadosPruebas (idPrueba, idCandidato, resultado) VALUES  ('2', '1', 3.83);
INSERT INTO ResultadosPruebas (idPrueba, idCandidato, resultado) VALUES  ('3', '2', 8.63);
INSERT INTO ResultadosPruebas (idPrueba, idCandidato, resultado) VALUES  ('4', '3', 9.92);
INSERT INTO ResultadosPruebas (idPrueba, idCandidato, resultado) VALUES  ('5', '4', 2.19);
INSERT INTO ResultadosPruebas (idPrueba, idCandidato, resultado) VALUES  ('1', '5', 3.76);
INSERT INTO ResultadosPruebas (idPrueba, idCandidato, resultado) VALUES  ('2', '6', 7.97);
INSERT INTO ResultadosPruebas (idPrueba, idCandidato, resultado) VALUES  ('3', '7', 8.96);
INSERT INTO ResultadosPruebas (idPrueba, idCandidato, resultado) VALUES  ('4', '8', 7.84);
INSERT INTO ResultadosPruebas (idPrueba, idCandidato, resultado) VALUES  ('5', '9', 5.67);
INSERT INTO ResultadosPruebas (idPrueba, idCandidato, resultado) VALUES  ('1', '10', 7.05);
INSERT INTO ResultadosPruebas (idPrueba, idCandidato, resultado) VALUES  ('2', '11', 4.32);
INSERT INTO ResultadosPruebas (idPrueba, idCandidato, resultado) VALUES  ('3', '12', 6.48);
INSERT INTO ResultadosPruebas (idPrueba, idCandidato, resultado) VALUES  ('4', '13', 5.84);
INSERT INTO ResultadosPruebas (idPrueba, idCandidato, resultado) VALUES  ('5', '14', 6.41);
INSERT INTO ResultadosPruebas (idPrueba, idCandidato, resultado) VALUES  ('1', '15', 9.08);
INSERT INTO ResultadosPruebas (idPrueba, idCandidato, resultado) VALUES  ('2', '16', 5.37);
INSERT INTO ResultadosPruebas (idPrueba, idCandidato, resultado) VALUES  ('3', '1', 2.2);
INSERT INTO ResultadosPruebas (idPrueba, idCandidato, resultado) VALUES  ('4', '2', 2.95);
INSERT INTO ResultadosPruebas (idPrueba, idCandidato, resultado) VALUES  ('5', '3', 5.36);
INSERT INTO ResultadosPruebas (idPrueba, idCandidato, resultado) VALUES  ('1', '4', 3.86);
INSERT INTO ResultadosPruebas (idPrueba, idCandidato, resultado) VALUES  ('2', '5', 5.97);
INSERT INTO ResultadosPruebas (idPrueba, idCandidato, resultado) VALUES  ('3', '6', 7.48);
INSERT INTO ResultadosPruebas (idPrueba, idCandidato, resultado) VALUES  ('4', '7', 8.54);
INSERT INTO ResultadosPruebas (idPrueba, idCandidato, resultado) VALUES  ('5', '8', 3.38);
INSERT INTO ResultadosPruebas (idPrueba, idCandidato, resultado) VALUES  ('1', '9', 2.24);
INSERT INTO ResultadosPruebas (idPrueba, idCandidato, resultado) VALUES  ('2', '10', 7.92);
INSERT INTO ResultadosPruebas (idPrueba, idCandidato, resultado) VALUES  ('3', '11', 5.45);
INSERT INTO ResultadosPruebas (idPrueba, idCandidato, resultado) VALUES  ('4', '12', 6.25);
INSERT INTO ResultadosPruebas (idPrueba, idCandidato, resultado) VALUES  ('5', '13', 3.75);
INSERT INTO ResultadosPruebas (idPrueba, idCandidato, resultado) VALUES  ('1', '14', 6.5);
INSERT INTO ResultadosPruebas (idPrueba, idCandidato, resultado) VALUES  ('2', '15', 2.78);
INSERT INTO ResultadosPruebas (idPrueba, idCandidato, resultado) VALUES  ('3', '16', 4.72);
INSERT INTO ResultadosPruebas (idPrueba, idCandidato, resultado) VALUES  ('4', '1', 9.74);
INSERT INTO ResultadosPruebas (idPrueba, idCandidato, resultado) VALUES  ('5', '2', 7.68);
INSERT INTO ResultadosPruebas (idPrueba, idCandidato, resultado) VALUES  ('1', '3', 8.45);
INSERT INTO ResultadosPruebas (idPrueba, idCandidato, resultado) VALUES  ('2', '4', 7.23);
INSERT INTO ResultadosPruebas (idPrueba, idCandidato, resultado) VALUES  ('3', '5', 2.68);
INSERT INTO ResultadosPruebas (idPrueba, idCandidato, resultado) VALUES  ('4', '6', 6.44);
INSERT INTO ResultadosPruebas (idPrueba, idCandidato, resultado) VALUES  ('5', '7', 8.58);
INSERT INTO ResultadosPruebas (idPrueba, idCandidato, resultado) VALUES  ('1', '8', 9.11);
INSERT INTO ResultadosPruebas (idPrueba, idCandidato, resultado) VALUES  ('2', '9', 9.79);
INSERT INTO ResultadosPruebas (idPrueba, idCandidato, resultado) VALUES  ('3', '10', 6.21);
INSERT INTO ResultadosPruebas (idPrueba, idCandidato, resultado) VALUES  ('4', '11', 8.83);
INSERT INTO ResultadosPruebas (idPrueba, idCandidato, resultado) VALUES  ('5', '12', 7.79);
INSERT INTO ResultadosPruebas (idPrueba, idCandidato, resultado) VALUES  ('1', '13', 3.78);
INSERT INTO ResultadosPruebas (idPrueba, idCandidato, resultado) VALUES  ('2', '14', 6.89);
INSERT INTO ResultadosPruebas (idPrueba, idCandidato, resultado) VALUES  ('3', '15', 5.39);
INSERT INTO ResultadosPruebas (idPrueba, idCandidato, resultado) VALUES  ('4', '16', 8.85);
INSERT INTO ResultadosPruebas (idPrueba, idCandidato, resultado) VALUES  ('5', '1', 6.57);
INSERT INTO ResultadosPruebas (idPrueba, idCandidato, resultado) VALUES  ('1', '2', 8.2);
INSERT INTO ResultadosPruebas (idPrueba, idCandidato, resultado) VALUES  ('2', '3', 3.35);
INSERT INTO ResultadosPruebas (idPrueba, idCandidato, resultado) VALUES  ('3', '4', 4.47);
INSERT INTO ResultadosPruebas (idPrueba, idCandidato, resultado) VALUES  ('4', '5', 7.78);
INSERT INTO ResultadosPruebas (idPrueba, idCandidato, resultado) VALUES  ('5', '6', 9.44);
INSERT INTO ResultadosPruebas (idPrueba, idCandidato, resultado) VALUES  ('1', '7', 6.93);
INSERT INTO ResultadosPruebas (idPrueba, idCandidato, resultado) VALUES  ('2', '8', 9.34);
INSERT INTO ResultadosPruebas (idPrueba, idCandidato, resultado) VALUES  ('3', '9', 7.7);
INSERT INTO ResultadosPruebas (idPrueba, idCandidato, resultado) VALUES  ('4', '10', 3.87);
INSERT INTO ResultadosPruebas (idPrueba, idCandidato, resultado) VALUES  ('5', '11', 7.83);
INSERT INTO ResultadosPruebas (idPrueba, idCandidato, resultado) VALUES  ('1', '12', 6.11);
INSERT INTO ResultadosPruebas (idPrueba, idCandidato, resultado) VALUES  ('2', '13', 5.18);
INSERT INTO ResultadosPruebas (idPrueba, idCandidato, resultado) VALUES  ('3', '14', 2.36);
INSERT INTO ResultadosPruebas (idPrueba, idCandidato, resultado) VALUES  ('4', '15', 7.37);
INSERT INTO ResultadosPruebas (idPrueba, idCandidato, resultado) VALUES  ('5', '16', 5.03);


CREATE TABLE Patrocinadores (
	idPatrocinador INTEGER NOT NULL PRIMARY KEY,
	nombre VARCHAR(255) NOT NULL,
	idPaísProcedencia INTEGER NOT NULL,
	
FOREIGN KEY (idPaísProcedencia) REFERENCES Países(idPaís)
);

INSERT INTO Patrocinadores (idPatrocinador, nombre, idPaísProcedencia) VALUES  (1, 'Duobam', '15');
INSERT INTO Patrocinadores (idPatrocinador, nombre, idPaísProcedencia) VALUES  (2, 'It', '22');
INSERT INTO Patrocinadores (idPatrocinador, nombre, idPaísProcedencia) VALUES  (3, 'Vagram', '19');
INSERT INTO Patrocinadores (idPatrocinador, nombre, idPaísProcedencia) VALUES  (4, 'Y-find', '2');
INSERT INTO Patrocinadores (idPatrocinador, nombre, idPaísProcedencia) VALUES  (5, 'Gembucket', '10');
INSERT INTO Patrocinadores (idPatrocinador, nombre, idPaísProcedencia) VALUES  (6, 'Voyatouch', '21');
INSERT INTO Patrocinadores (idPatrocinador, nombre, idPaísProcedencia) VALUES  (7, 'Lotlux', '17');
INSERT INTO Patrocinadores (idPatrocinador, nombre, idPaísProcedencia) VALUES  (8, 'Pannier', '6');
INSERT INTO Patrocinadores (idPatrocinador, nombre, idPaísProcedencia) VALUES  (9, 'Tres-Zap', '4');
INSERT INTO Patrocinadores (idPatrocinador, nombre, idPaísProcedencia) VALUES  (10, 'Holdlamis', '11');
INSERT INTO Patrocinadores (idPatrocinador, nombre, idPaísProcedencia) VALUES  (11, 'Keylex', '8');
INSERT INTO Patrocinadores (idPatrocinador, nombre, idPaísProcedencia) VALUES  (12, 'Subin', '16');
INSERT INTO Patrocinadores (idPatrocinador, nombre, idPaísProcedencia) VALUES  (13, 'Domainer', '13');
INSERT INTO Patrocinadores (idPatrocinador, nombre, idPaísProcedencia) VALUES  (14, 'Home Ing', '20');
INSERT INTO Patrocinadores (idPatrocinador, nombre, idPaísProcedencia) VALUES  (15, 'Bitwolf', '18');

CREATE TABLE Árbitros (
	idPersona INTEGER NOT NULL PRIMARY KEY,
	
FOREIGN KEY (idPersona) REFERENCES Personas(idPersona)
);

INSERT INTO Árbitros (idPersona) VALUES  (17);
INSERT INTO Árbitros (idPersona) VALUES  (18);
INSERT INTO Árbitros (idPersona) VALUES  (19);
INSERT INTO Árbitros (idPersona) VALUES  (20);
INSERT INTO Árbitros (idPersona) VALUES  (21);
INSERT INTO Árbitros (idPersona) VALUES  (22);
INSERT INTO Árbitros (idPersona) VALUES  (23);
INSERT INTO Árbitros (idPersona) VALUES  (24);
INSERT INTO Árbitros (idPersona) VALUES  (25);
INSERT INTO Árbitros (idPersona) VALUES  (26);
INSERT INTO Árbitros (idPersona) VALUES  (146);


CREATE TABLE Estadios (
	idEstadio INTEGER NOT NULL PRIMARY KEY,
	nombre VARCHAR(255) NOT NULL,
	dirección VARCHAR(255) NOT NULL,
	capacidad INTEGER NOT NULL,
	idCiudad INTEGER NOT NULL,
	
FOREIGN KEY (idCiudad) REFERENCES Ciudades(idCiudad)
);


INSERT INTO Estadios (idEstadio, nombre, dirección, capacidad, idCiudad) VALUES  (1, 'TD Garden', '4855 Randy Lane', 19670, '1');
INSERT INTO Estadios (idEstadio, nombre, dirección, capacidad, idCiudad) VALUES  (2, 'Barclays Center', '838 Barby Drive', 17079, '2');
INSERT INTO Estadios (idEstadio, nombre, dirección, capacidad, idCiudad) VALUES  (3, 'United Center', '1 South Place', 10810, '3');
INSERT INTO Estadios (idEstadio, nombre, dirección, capacidad, idCiudad) VALUES  (4, 'Fiserv Forum', '78 Del Mar Terrace', 14510, '4');
INSERT INTO Estadios (idEstadio, nombre, dirección, capacidad, idCiudad) VALUES  (5, 'Pepsi Center', '77 Stephen Lane', 6467, '5');
INSERT INTO Estadios (idEstadio, nombre, dirección, capacidad, idCiudad) VALUES  (6, 'Target Center', '8 Farragut Junction', 6982, '6');
INSERT INTO Estadios (idEstadio, nombre, dirección, capacidad, idCiudad) VALUES  (7, 'Staples Center', '7 Grover Road', 13722, '7');
INSERT INTO Estadios (idEstadio, nombre, dirección, capacidad, idCiudad) VALUES  (8, 'Talking Stick Resort Arena', '178 Manufacturers Trail', 14161, '8');
INSERT INTO Estadios (idEstadio, nombre, dirección, capacidad, idCiudad) VALUES  (9, 'State Farm Arena', '6 Pankratz Lane', 13943, '9');
INSERT INTO Estadios (idEstadio, nombre, dirección, capacidad, idCiudad) VALUES  (10, 'American Airlines Arena', '177 Merry Trail', 17136, '10');
INSERT INTO Estadios (idEstadio, nombre, dirección, capacidad, idCiudad) VALUES  (11, 'Smoothie King Center', '3 Stone Corner Pass', 12154, '11');
INSERT INTO Estadios (idEstadio, nombre, dirección, capacidad, idCiudad) VALUES  (12, 'American Airlines Center', '04 Lakeland Avenue', 17312, '12');


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

INSERT INTO Equipos (idEquipo, nombre, FechaDeFundación, idCiudad, idDivisión, idEstadioDueño, idPatrocinador)
VALUES (1, 'Celtics', TO_DATE('26/12/1974', 'DD/MM/YYYY'), '18', '1', '1', '5');

INSERT INTO Equipos (idEquipo, nombre, FechaDeFundación, idCiudad, idDivisión, idEstadioDueño, idPatrocinador)
VALUES (2, 'Nuggets', TO_DATE('03/06/1961', 'DD/MM/YYYY'), '6', '2', '2', '8');

INSERT INTO Equipos (idEquipo, nombre, FechaDeFundación, idCiudad, idDivisión, idEstadioDueño, idPatrocinador)
VALUES (3, 'Bulls', TO_DATE('26/05/2008', 'DD/MM/YYYY'), '15', '3', '3', '1');

INSERT INTO Equipos (idEquipo, nombre, FechaDeFundación, idCiudad, idDivisión, idEstadioDueño, idPatrocinador)
VALUES (4, 'Clippers', TO_DATE('13/02/1992', 'DD/MM/YYYY'), '7', '4', '4', '4');

INSERT INTO Equipos (idEquipo, nombre, FechaDeFundación, idCiudad, idDivisión, idEstadioDueño, idPatrocinador)
VALUES (5, 'Hawks', TO_DATE('04/03/2006', 'DD/MM/YYYY'), '25', '5', '5', '9');

INSERT INTO Equipos (idEquipo, nombre, FechaDeFundación, idCiudad, idDivisión, idEstadioDueño, idPatrocinador)
VALUES (6, 'Pelicans', TO_DATE('22/08/1989', 'DD/MM/YYYY'), '9', '6', '6', '2');

INSERT INTO Equipos (idEquipo, nombre, FechaDeFundación, idCiudad, idDivisión, idEstadioDueño, idPatrocinador)
VALUES (7, 'Nets', TO_DATE('09/11/1957', 'DD/MM/YYYY'), '5', '1', '7', '3');

INSERT INTO Equipos (idEquipo, nombre, FechaDeFundación, idCiudad, idDivisión, idEstadioDueño, idPatrocinador)
VALUES (8, 'Timberwolves', TO_DATE('31/01/1972', 'DD/MM/YYYY'), '1', '2', '8', '10');

INSERT INTO Equipos (idEquipo, nombre, FechaDeFundación, idCiudad, idDivisión, idEstadioDueño, idPatrocinador)
VALUES (9, 'Bucks', TO_DATE('25/09/1964', 'DD/MM/YYYY'), '26', '3', '9', '7');

INSERT INTO Equipos (idEquipo, nombre, FechaDeFundación, idCiudad, idDivisión, idEstadioDueño, idPatrocinador)
VALUES (10, 'Suns', TO_DATE('24/08/1958', 'DD/MM/YYYY'), '13', '4', '10', '6');

INSERT INTO Equipos (idEquipo, nombre, FechaDeFundación, idCiudad, idDivisión, idEstadioDueño, idPatrocinador)
VALUES (11, 'Heat', TO_DATE('08/11/1958', 'DD/MM/YYYY'), '17', '5', '11', '1');

INSERT INTO Equipos (idEquipo, nombre, FechaDeFundación, idCiudad, idDivisión, idEstadioDueño, idPatrocinador)
VALUES (12, 'Mavericks', TO_DATE('20/12/1966', 'DD/MM/YYYY'), '30', '6', '12', '2');

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

INSERT INTO Partidos (idPartido, idEstadio, idEquipoLocal, idEquipoVisitante, fechaRealización, horaIniciación, horaFinalización, idFase)
VALUES (1, '1', '1', '10', TO_DATE('11/11/2021', 'DD/MM/YYYY'), '20:47:13', '21:47:13', '1');

INSERT INTO Partidos (idPartido, idEstadio, idEquipoLocal, idEquipoVisitante, fechaRealización, horaIniciación, horaFinalización, idFase)
VALUES (2, '2', '2', '8', TO_DATE('29/12/2021', 'DD/MM/YYYY'), '21:40:51', '22:40:51', '2');

INSERT INTO Partidos (idPartido, idEstadio, idEquipoLocal, idEquipoVisitante, fechaRealización, horaIniciación, horaFinalización, idFase)
VALUES (3, '3', '3', '6', TO_DATE('19/02/2022', 'DD/MM/YYYY'), '19:31:56', '20:31:56', '3');

INSERT INTO Partidos (idPartido, idEstadio, idEquipoLocal, idEquipoVisitante, fechaRealización, horaIniciación, horaFinalización, idFase)
VALUES (4, '4', '4', '4', TO_DATE('27/04/2022', 'DD/MM/YYYY'), '19:15:31', '20:15:31', '1');

INSERT INTO Partidos (idPartido, idEstadio, idEquipoLocal, idEquipoVisitante, fechaRealización, horaIniciación, horaFinalización, idFase)
VALUES (5, '5', '5', '1', TO_DATE('21/10/2021', 'DD/MM/YYYY'), '19:09:39', '20:09:39', '2');

INSERT INTO Partidos (idPartido, idEstadio, idEquipoLocal, idEquipoVisitante, fechaRealización, horaIniciación, horaFinalización, idFase)
VALUES (6, '6', '6', '12', TO_DATE('14/12/2021', 'DD/MM/YYYY'), '22:51:59', '23:51:59', '3');

INSERT INTO Partidos (idPartido, idEstadio, idEquipoLocal, idEquipoVisitante, fechaRealización, horaIniciación, horaFinalización, idFase)
VALUES (7, '7', '7', '11', TO_DATE('23/05/2022', 'DD/MM/YYYY'), '20:31:18', '21:31:18', '1');

INSERT INTO Partidos (idPartido, idEstadio, idEquipoLocal, idEquipoVisitante, fechaRealización, horaIniciación, horaFinalización, idFase)
VALUES (8, '8', '8', '5', TO_DATE('17/02/2022', 'DD/MM/YYYY'), '23:09:06', '00:09:06', '2');

INSERT INTO Partidos (idPartido, idEstadio, idEquipoLocal, idEquipoVisitante, fechaRealización, horaIniciación, horaFinalización, idFase)
VALUES (9, '9', '9', '2', TO_DATE('27/05/2022', 'DD/MM/YYYY'), '20:11:38', '21:11:38', '3');

INSERT INTO Partidos (idPartido, idEstadio, idEquipoLocal, idEquipoVisitante, fechaRealización, horaIniciación, horaFinalización, idFase)
VALUES (10, '10', '10', '3', TO_DATE('04/05/2022', 'DD/MM/YYYY'), '20:24:31', '21:24:31', '1');

INSERT INTO Partidos (idPartido, idEstadio, idEquipoLocal, idEquipoVisitante, fechaRealización, horaIniciación, horaFinalización, idFase)
VALUES (11, '11', '11', '7', TO_DATE('15/02/2022', 'DD/MM/YYYY'), '20:21:02', '21:21:02', '2');

INSERT INTO Partidos (idPartido, idEstadio, idEquipoLocal, idEquipoVisitante, fechaRealización, horaIniciación, horaFinalización, idFase)
VALUES (12, '12', '12', '9', TO_DATE('17/12/2021', 'DD/MM/YYYY'), '19:37:09', '20:37:09', '3');

INSERT INTO Partidos (idPartido, idEstadio, idEquipoLocal, idEquipoVisitante, fechaRealización, horaIniciación, horaFinalización, idFase)
VALUES (13, '1', '1', '5', TO_DATE('06/12/2021', 'DD/MM/YYYY'), '21:13:38', '22:13:38', '1');

INSERT INTO Partidos (idPartido, idEstadio, idEquipoLocal, idEquipoVisitante, fechaRealización, horaIniciación, horaFinalización, idFase)
VALUES (14, '2', '2', '10', TO_DATE('18/12/2021', 'DD/MM/YYYY'), '19:06:57', '20:06:57', '2');

INSERT INTO Partidos (idPartido, idEstadio, idEquipoLocal, idEquipoVisitante, fechaRealización, horaIniciación, horaFinalización, idFase)
VALUES (15, '3', '3', '7', TO_DATE('06/11/2021', 'DD/MM/YYYY'), '22:37:02', '23:37:02', '3');

INSERT INTO Partidos (idPartido, idEstadio, idEquipoLocal, idEquipoVisitante, fechaRealización, horaIniciación, horaFinalización, idFase)
VALUES (16, '4', '4', '1', TO_DATE('06/05/2022', 'DD/MM/YYYY'), '23:13:42', '00:13:42', '1');

INSERT INTO Partidos (idPartido, idEstadio, idEquipoLocal, idEquipoVisitante, fechaRealización, horaIniciación, horaFinalización, idFase)
VALUES (17, '5', '5', '11', TO_DATE('13/06/2022', 'DD/MM/YYYY'), '23:13:14', '00:13:14', '2');

INSERT INTO Partidos (idPartido, idEstadio, idEquipoLocal, idEquipoVisitante, fechaRealización, horaIniciación, horaFinalización, idFase)
VALUES (18, '6', '6', '3', TO_DATE('07/04/2022', 'DD/MM/YYYY'), '23:02:53', '00:02:53', '3');

INSERT INTO Partidos (idPartido, idEstadio, idEquipoLocal, idEquipoVisitante, fechaRealización, horaIniciación, horaFinalización, idFase)
VALUES (19, '7', '7', '2', TO_DATE('12/06/2022', 'DD/MM/YYYY'), '20:31:37', '21:31:37', '1');

INSERT INTO Partidos (idPartido, idEstadio, idEquipoLocal, idEquipoVisitante, fechaRealización, horaIniciación, horaFinalización, idFase)
VALUES (20, '8', '8', '12', TO_DATE('02/06/2022', 'DD/MM/YYYY'), '19:32:05', '20:32:05', '2');

INSERT INTO Partidos (idPartido, idEstadio, idEquipoLocal, idEquipoVisitante, fechaRealización, horaIniciación, horaFinalización, idFase)
VALUES (21, '9', '9', '4', TO_DATE('04/11/2021', 'DD/MM/YYYY'), '21:53:33', '22:53:33', '3');

INSERT INTO Partidos (idPartido, idEstadio, idEquipoLocal, idEquipoVisitante, fechaRealización, horaIniciación, horaFinalización, idFase)
VALUES (22, '10', '10', '9', TO_DATE('08/04/2022', 'DD/MM/YYYY'), '19:13:49', '20:13:49', '1');

INSERT INTO Partidos (idPartido, idEstadio, idEquipoLocal, idEquipoVisitante, fechaRealización, horaIniciación, horaFinalización, idFase)
VALUES (23, '11', '11', '8', TO_DATE('22/01/2022', 'DD/MM/YYYY'), '20:53:52', '21:53:52', '2');

INSERT INTO Partidos (idPartido, idEstadio, idEquipoLocal, idEquipoVisitante, fechaRealización, horaIniciación, horaFinalización, idFase)
VALUES (24, '12', '12', '6', TO_DATE('29/11/2021', 'DD/MM/YYYY'), '19:13:13', '20:13:13', '3');

INSERT INTO Partidos (idPartido, idEstadio, idEquipoLocal, idEquipoVisitante, fechaRealización, horaIniciación, horaFinalización, idFase)
VALUES (25, '1', '1', '10', TO_DATE('09/04/2022', 'DD/MM/YYYY'), '23:20:00', '00:20:00', '1');
INSERT INTO Partidos (idPartido, idEstadio, idEquipoLocal, idEquipoVisitante, fechaRealización, horaIniciación, horaFinalización, idFase)
VALUES (26, '2', '2', '8', TO_DATE('02/11/2021', 'DD/MM/YYYY'), '21:31:22', '22:31:22', '2');

INSERT INTO Partidos (idPartido, idEstadio, idEquipoLocal, idEquipoVisitante, fechaRealización, horaIniciación, horaFinalización, idFase)
VALUES (27, '3', '3', '5', TO_DATE('01/05/2022', 'DD/MM/YYYY'), '19:48:50', '20:48:50', '3');

INSERT INTO Partidos (idPartido, idEstadio, idEquipoLocal, idEquipoVisitante, fechaRealización, horaIniciación, horaFinalización, idFase)
VALUES (28, '4', '4', '1', TO_DATE('05/05/2022', 'DD/MM/YYYY'), '19:12:44', '20:12:44', '1');

INSERT INTO Partidos (idPartido, idEstadio, idEquipoLocal, idEquipoVisitante, fechaRealización, horaIniciación, horaFinalización, idFase)
VALUES (29, '5', '5', '11', TO_DATE('29/05/2022', 'DD/MM/YYYY'), '22:22:20', '23:22:20', '2');

INSERT INTO Partidos (idPartido, idEstadio, idEquipoLocal, idEquipoVisitante, fechaRealización, horaIniciación, horaFinalización, idFase)
VALUES (30, '6', '6', '3', TO_DATE('30/03/2022', 'DD/MM/YYYY'), '20:15:21', '21:15:21', '3');

INSERT INTO Partidos (idPartido, idEstadio, idEquipoLocal, idEquipoVisitante, fechaRealización, horaIniciación, horaFinalización, idFase)
VALUES (31, '7', '7', '4', TO_DATE('27/10/2021', 'DD/MM/YYYY'), '19:17:23', '20:17:23', '1');

INSERT INTO Partidos (idPartido, idEstadio, idEquipoLocal, idEquipoVisitante, fechaRealización, horaIniciación, horaFinalización, idFase)
VALUES (32, '8', '8', '7', TO_DATE('29/01/2022', 'DD/MM/YYYY'), '22:26:12', '23:26:12', '2');

INSERT INTO Partidos (idPartido, idEstadio, idEquipoLocal, idEquipoVisitante, fechaRealización, horaIniciación, horaFinalización, idFase)
VALUES (33, '9', '9', '2', TO_DATE('27/11/2021', 'DD/MM/YYYY'), '22:31:53', '23:31:53', '3');

INSERT INTO Partidos (idPartido, idEstadio, idEquipoLocal, idEquipoVisitante, fechaRealización, horaIniciación, horaFinalización, idFase)
VALUES (34, '10', '10', '9', TO_DATE('31/01/2022', 'DD/MM/YYYY'), '22:47:27', '23:47:27', '1');

INSERT INTO Partidos (idPartido, idEstadio, idEquipoLocal, idEquipoVisitante, fechaRealización, horaIniciación, horaFinalización, idFase)
VALUES (35, '11', '11', '6', TO_DATE('20/03/2022', 'DD/MM/YYYY'), '20:42:34', '21:42:34', '2');

INSERT INTO Partidos (idPartido, idEstadio, idEquipoLocal, idEquipoVisitante, fechaRealización, horaIniciación, horaFinalización, idFase)
VALUES (36, '12', '12', '12', TO_DATE('03/12/2021', 'DD/MM/YYYY'), '19:56:07', '20:56:07', '3');

INSERT INTO Partidos (idPartido, idEstadio, idEquipoLocal, idEquipoVisitante, fechaRealización, horaIniciación, horaFinalización, idFase)
VALUES (37, '1', '1', '5', TO_DATE('18/04/2022', 'DD/MM/YYYY'), '19:41:57', '20:41:57', '1');

INSERT INTO Partidos (idPartido, idEstadio, idEquipoLocal, idEquipoVisitante, fechaRealización, horaIniciación, horaFinalización, idFase)
VALUES (38, '2', '2', '12', TO_DATE('17/03/2022', 'DD/MM/YYYY'), '20:47:00', '21:47:00', '2');

INSERT INTO Partidos (idPartido, idEstadio, idEquipoLocal, idEquipoVisitante, fechaRealización, horaIniciación, horaFinalización, idFase)
VALUES (39, '3', '3', '9', TO_DATE('15/02/2022', 'DD/MM/YYYY'), '20:06:59', '21:06:59', '3');

INSERT INTO Partidos (idPartido, idEstadio, idEquipoLocal, idEquipoVisitante, fechaRealización, horaIniciación, horaFinalización, idFase)
VALUES (40, '4', '4', '3', TO_DATE('10/11/2021', 'DD/MM/YYYY'), '20:37:06', '21:37:06', '1');

INSERT INTO Partidos (idPartido, idEstadio, idEquipoLocal, idEquipoVisitante, fechaRealización, horaIniciación, horaFinalización, idFase)
VALUES (41, '5', '5', '11', TO_DATE('13/05/2022', 'DD/MM/YYYY'), '20:18:28', '21:18:28', '2');

INSERT INTO Partidos (idPartido, idEstadio, idEquipoLocal, idEquipoVisitante, fechaRealización, horaIniciación, horaFinalización, idFase)
VALUES (42, '6', '6', '6', TO_DATE('18/04/2022', 'DD/MM/YYYY'), '20:59:22', '21:59:22', '3');

INSERT INTO Partidos (idPartido, idEstadio, idEquipoLocal, idEquipoVisitante, fechaRealización, horaIniciación, horaFinalización, idFase)
VALUES (43, '7', '7', '4', TO_DATE('17/05/2022', 'DD/MM/YYYY'), '22:06:40', '23:06:40', '1');

INSERT INTO Partidos (idPartido, idEstadio, idEquipoLocal, idEquipoVisitante, fechaRealización, horaIniciación, horaFinalización, idFase)
VALUES (44, '8', '8', '2', TO_DATE('27/10/2021', 'DD/MM/YYYY'), '20:13:28', '21:13:28', '2');

INSERT INTO Partidos (idPartido, idEstadio, idEquipoLocal, idEquipoVisitante, fechaRealización, horaIniciación, horaFinalización, idFase)
VALUES (45, '9', '9', '7', TO_DATE('03/04/2022', 'DD/MM/YYYY'), '20:17:04', '21:17:04', '3');

INSERT INTO Partidos (idPartido, idEstadio, idEquipoLocal, idEquipoVisitante, fechaRealización, horaIniciación, horaFinalización, idFase)
VALUES (46, '10', '10', '8', TO_DATE('14/04/2022', 'DD/MM/YYYY'), '21:12:43', '22:12:43', '1');

INSERT INTO Partidos (idPartido, idEstadio, idEquipoLocal, idEquipoVisitante, fechaRealización, horaIniciación, horaFinalización, idFase)
VALUES (47, '11', '11', '10', TO_DATE('23/01/2022', 'DD/MM/YYYY'), '21:57:59', '22:57:59', '2');

INSERT INTO Partidos (idPartido, idEstadio, idEquipoLocal, idEquipoVisitante, fechaRealización, horaIniciación, horaFinalización, idFase)
VALUES (48, '12', '12', '1', TO_DATE('05/11/2021', 'DD/MM/YYYY'), '20:30:12', '21:30:12', '3');

INSERT INTO Partidos (idPartido, idEstadio, idEquipoLocal, idEquipoVisitante, fechaRealización, horaIniciación, horaFinalización, idFase)
VALUES (49, '1', '1', '9', TO_DATE('03/02/2022', 'DD/MM/YYYY'), '22:40:46', '23:40:46', '1');

INSERT INTO Partidos (idPartido, idEstadio, idEquipoLocal, idEquipoVisitante, fechaRealización, horaIniciación, horaFinalización, idFase)
VALUES (50, '2', '2', '4', TO_DATE('03/06/2022', 'DD/MM/YYYY'), '19:51:20', '20:51:20', '2');

INSERT INTO Partidos (idPartido, idEstadio, idEquipoLocal, idEquipoVisitante, fechaRealización, horaIniciación, horaFinalización, idFase)
VALUES (51, '3', '3', '8', TO_DATE('29/10/2021', 'DD/MM/YYYY'), '19:58:58', '20:58:58', '3');

INSERT INTO Partidos (idPartido, idEstadio, idEquipoLocal, idEquipoVisitante, fechaRealización, horaIniciación, horaFinalización, idFase)
VALUES (52, '4', '4', '7', TO_DATE('28/11/2021', 'DD/MM/YYYY'), '21:47:31', '22:47:31', '1');

INSERT INTO Partidos (idPartido, idEstadio, idEquipoLocal, idEquipoVisitante, fechaRealización, horaIniciación, horaFinalización, idFase)
VALUES (53, '5', '5', '3', TO_DATE('25/04/2022', 'DD/MM/YYYY'), '21:06:50', '22:07:50', '2');

INSERT INTO Partidos (idPartido, idEstadio, idEquipoLocal, idEquipoVisitante, fechaRealización, horaIniciación, horaFinalización, idFase)
VALUES (54, '6', '6', '11', TO_DATE('22/12/2021', 'DD/MM/YYYY'), '20:16:26', '21:16:26', '3');

INSERT INTO Partidos (idPartido, idEstadio, idEquipoLocal, idEquipoVisitante, fechaRealización, horaIniciación, horaFinalización, idFase)
VALUES (55, '7', '7', '1', TO_DATE('01/01/2022', 'DD/MM/YYYY'), '20:47:07', '21:47:07', '1');

INSERT INTO Partidos (idPartido, idEstadio, idEquipoLocal, idEquipoVisitante, fechaRealización, horaIniciación, horaFinalización, idFase)
VALUES (56, '8', '8', '10', TO_DATE('29/10/2021', 'DD/MM/YYYY'), '21:03:40', '22:03:40', '2');

INSERT INTO Partidos (idPartido, idEstadio, idEquipoLocal, idEquipoVisitante, fechaRealización, horaIniciación, horaFinalización, idFase)
VALUES (57, '9', '9', '6', TO_DATE('12/05/2022', 'DD/MM/YYYY'), '19:12:35', '20:12:35', '3');

INSERT INTO Partidos (idPartido, idEstadio, idEquipoLocal, idEquipoVisitante, fechaRealización, horaIniciación, horaFinalización, idFase)
VALUES (58, '10', '10', '5', TO_DATE('12/01/2022', 'DD/MM/YYYY'), '23:08:59', '00:08:59', '1');

INSERT INTO Partidos (idPartido, idEstadio, idEquipoLocal, idEquipoVisitante, fechaRealización, horaIniciación, horaFinalización, idFase)
VALUES (59, '11', '11', '12', TO_DATE('25/03/2022', 'DD/MM/YYYY'), '23:18:45', '23:18:45', '2');

INSERT INTO Partidos (idPartido, idEstadio, idEquipoLocal, idEquipoVisitante, fechaRealización, horaIniciación, horaFinalización, idFase)
VALUES (60, '12', '12', '2', TO_DATE('04/01/2022', 'DD/MM/YYYY'), '22:19:25', '23:19:25', '3');

CREATE TABLE ParticipacionesÁrbitros (
	idPartido INTEGER NOT NULL,
	idÁrbitro INTEGER NOT NULL,
	
	PRIMARY KEY (idPartido, idÁrbitro),
	FOREIGN KEY (idPartido) REFERENCES Partidos(idPartido),
	FOREIGN KEY (idÁrbitro) REFERENCES Árbitros(idPersona)
);

INSERT INTO ParticipacionesÁrbitros (idPartido, idÁrbitro) VALUES  ('1', '17');
INSERT INTO ParticipacionesÁrbitros (idPartido, idÁrbitro) VALUES  ('2', '18');
INSERT INTO ParticipacionesÁrbitros (idPartido, idÁrbitro) VALUES  ('3', '19');
INSERT INTO ParticipacionesÁrbitros (idPartido, idÁrbitro) VALUES  ('4', '20');
INSERT INTO ParticipacionesÁrbitros (idPartido, idÁrbitro) VALUES  ('5', '21');
INSERT INTO ParticipacionesÁrbitros (idPartido, idÁrbitro) VALUES  ('6', '22');
INSERT INTO ParticipacionesÁrbitros (idPartido, idÁrbitro) VALUES  ('7', '23');
INSERT INTO ParticipacionesÁrbitros (idPartido, idÁrbitro) VALUES  ('8', '24');
INSERT INTO ParticipacionesÁrbitros (idPartido, idÁrbitro) VALUES  ('9', '25');
INSERT INTO ParticipacionesÁrbitros (idPartido, idÁrbitro) VALUES  ('10', '26');
INSERT INTO ParticipacionesÁrbitros (idPartido, idÁrbitro) VALUES  ('11', '146');
INSERT INTO ParticipacionesÁrbitros (idPartido, idÁrbitro) VALUES  ('12', '17');
INSERT INTO ParticipacionesÁrbitros (idPartido, idÁrbitro) VALUES  ('13', '18');
INSERT INTO ParticipacionesÁrbitros (idPartido, idÁrbitro) VALUES  ('14', '19');
INSERT INTO ParticipacionesÁrbitros (idPartido, idÁrbitro) VALUES  ('15', '20');
INSERT INTO ParticipacionesÁrbitros (idPartido, idÁrbitro) VALUES  ('16', '21');
INSERT INTO ParticipacionesÁrbitros (idPartido, idÁrbitro) VALUES  ('17', '22');
INSERT INTO ParticipacionesÁrbitros (idPartido, idÁrbitro) VALUES  ('18', '23');
INSERT INTO ParticipacionesÁrbitros (idPartido, idÁrbitro) VALUES  ('19', '24');
INSERT INTO ParticipacionesÁrbitros (idPartido, idÁrbitro) VALUES  ('20', '25');
INSERT INTO ParticipacionesÁrbitros (idPartido, idÁrbitro) VALUES  ('21', '26');
INSERT INTO ParticipacionesÁrbitros (idPartido, idÁrbitro) VALUES  ('22', '146');
INSERT INTO ParticipacionesÁrbitros (idPartido, idÁrbitro) VALUES  ('23', '17');
INSERT INTO ParticipacionesÁrbitros (idPartido, idÁrbitro) VALUES  ('24', '18');
INSERT INTO ParticipacionesÁrbitros (idPartido, idÁrbitro) VALUES  ('25', '19');
INSERT INTO ParticipacionesÁrbitros (idPartido, idÁrbitro) VALUES  ('26', '20');
INSERT INTO ParticipacionesÁrbitros (idPartido, idÁrbitro) VALUES  ('27', '21');
INSERT INTO ParticipacionesÁrbitros (idPartido, idÁrbitro) VALUES  ('28', '22');
INSERT INTO ParticipacionesÁrbitros (idPartido, idÁrbitro) VALUES  ('29', '23');
INSERT INTO ParticipacionesÁrbitros (idPartido, idÁrbitro) VALUES  ('30', '24');
INSERT INTO ParticipacionesÁrbitros (idPartido, idÁrbitro) VALUES  ('31', '25');
INSERT INTO ParticipacionesÁrbitros (idPartido, idÁrbitro) VALUES  ('32', '26');
INSERT INTO ParticipacionesÁrbitros (idPartido, idÁrbitro) VALUES  ('33', '146');
INSERT INTO ParticipacionesÁrbitros (idPartido, idÁrbitro) VALUES  ('34', '17');
INSERT INTO ParticipacionesÁrbitros (idPartido, idÁrbitro) VALUES  ('35', '18');
INSERT INTO ParticipacionesÁrbitros (idPartido, idÁrbitro) VALUES  ('36', '19');
INSERT INTO ParticipacionesÁrbitros (idPartido, idÁrbitro) VALUES  ('37', '20');
INSERT INTO ParticipacionesÁrbitros (idPartido, idÁrbitro) VALUES  ('38', '21');
INSERT INTO ParticipacionesÁrbitros (idPartido, idÁrbitro) VALUES  ('39', '22');
INSERT INTO ParticipacionesÁrbitros (idPartido, idÁrbitro) VALUES  ('40', '23');
INSERT INTO ParticipacionesÁrbitros (idPartido, idÁrbitro) VALUES  ('41', '24');
INSERT INTO ParticipacionesÁrbitros (idPartido, idÁrbitro) VALUES  ('42', '25');
INSERT INTO ParticipacionesÁrbitros (idPartido, idÁrbitro) VALUES  ('43', '26');
INSERT INTO ParticipacionesÁrbitros (idPartido, idÁrbitro) VALUES  ('44', '146');
INSERT INTO ParticipacionesÁrbitros (idPartido, idÁrbitro) VALUES  ('45', '17');
INSERT INTO ParticipacionesÁrbitros (idPartido, idÁrbitro) VALUES  ('46', '18');
INSERT INTO ParticipacionesÁrbitros (idPartido, idÁrbitro) VALUES  ('47', '19');
INSERT INTO ParticipacionesÁrbitros (idPartido, idÁrbitro) VALUES  ('48', '20');
INSERT INTO ParticipacionesÁrbitros (idPartido, idÁrbitro) VALUES  ('49', '21');
INSERT INTO ParticipacionesÁrbitros (idPartido, idÁrbitro) VALUES  ('50', '22');
INSERT INTO ParticipacionesÁrbitros (idPartido, idÁrbitro) VALUES  ('51', '23');
INSERT INTO ParticipacionesÁrbitros (idPartido, idÁrbitro) VALUES  ('52', '24');
INSERT INTO ParticipacionesÁrbitros (idPartido, idÁrbitro) VALUES  ('53', '25');
INSERT INTO ParticipacionesÁrbitros (idPartido, idÁrbitro) VALUES  ('54', '26');
INSERT INTO ParticipacionesÁrbitros (idPartido, idÁrbitro) VALUES  ('55', '146');
INSERT INTO ParticipacionesÁrbitros (idPartido, idÁrbitro) VALUES  ('56', '17');
INSERT INTO ParticipacionesÁrbitros (idPartido, idÁrbitro) VALUES  ('57', '18');
INSERT INTO ParticipacionesÁrbitros (idPartido, idÁrbitro) VALUES  ('58', '19');
INSERT INTO ParticipacionesÁrbitros (idPartido, idÁrbitro) VALUES  ('59', '20');
INSERT INTO ParticipacionesÁrbitros (idPartido, idÁrbitro) VALUES  ('60', '21');
INSERT INTO ParticipacionesÁrbitros (idPartido, idÁrbitro) VALUES  ('1', '22');
INSERT INTO ParticipacionesÁrbitros (idPartido, idÁrbitro) VALUES  ('2', '23');
INSERT INTO ParticipacionesÁrbitros (idPartido, idÁrbitro) VALUES  ('3', '24');
INSERT INTO ParticipacionesÁrbitros (idPartido, idÁrbitro) VALUES  ('4', '25');
INSERT INTO ParticipacionesÁrbitros (idPartido, idÁrbitro) VALUES  ('5', '26');
INSERT INTO ParticipacionesÁrbitros (idPartido, idÁrbitro) VALUES  ('6', '146');
INSERT INTO ParticipacionesÁrbitros (idPartido, idÁrbitro) VALUES  ('7', '17');
INSERT INTO ParticipacionesÁrbitros (idPartido, idÁrbitro) VALUES  ('8', '18');
INSERT INTO ParticipacionesÁrbitros (idPartido, idÁrbitro) VALUES  ('9', '19');
INSERT INTO ParticipacionesÁrbitros (idPartido, idÁrbitro) VALUES  ('10', '20');
INSERT INTO ParticipacionesÁrbitros (idPartido, idÁrbitro) VALUES  ('11', '21');
INSERT INTO ParticipacionesÁrbitros (idPartido, idÁrbitro) VALUES  ('12', '22');
INSERT INTO ParticipacionesÁrbitros (idPartido, idÁrbitro) VALUES  ('13', '23');
INSERT INTO ParticipacionesÁrbitros (idPartido, idÁrbitro) VALUES  ('14', '24');
INSERT INTO ParticipacionesÁrbitros (idPartido, idÁrbitro) VALUES  ('15', '25');
INSERT INTO ParticipacionesÁrbitros (idPartido, idÁrbitro) VALUES  ('16', '26');
INSERT INTO ParticipacionesÁrbitros (idPartido, idÁrbitro) VALUES  ('17', '146');
INSERT INTO ParticipacionesÁrbitros (idPartido, idÁrbitro) VALUES  ('18', '17');
INSERT INTO ParticipacionesÁrbitros (idPartido, idÁrbitro) VALUES  ('19', '18');
INSERT INTO ParticipacionesÁrbitros (idPartido, idÁrbitro) VALUES  ('20', '19');
INSERT INTO ParticipacionesÁrbitros (idPartido, idÁrbitro) VALUES  ('21', '20');
INSERT INTO ParticipacionesÁrbitros (idPartido, idÁrbitro) VALUES  ('22', '21');
INSERT INTO ParticipacionesÁrbitros (idPartido, idÁrbitro) VALUES  ('23', '22');
INSERT INTO ParticipacionesÁrbitros (idPartido, idÁrbitro) VALUES  ('24', '23');
INSERT INTO ParticipacionesÁrbitros (idPartido, idÁrbitro) VALUES  ('25', '24');
INSERT INTO ParticipacionesÁrbitros (idPartido, idÁrbitro) VALUES  ('26', '25');
INSERT INTO ParticipacionesÁrbitros (idPartido, idÁrbitro) VALUES  ('27', '26');
INSERT INTO ParticipacionesÁrbitros (idPartido, idÁrbitro) VALUES  ('28', '146');
INSERT INTO ParticipacionesÁrbitros (idPartido, idÁrbitro) VALUES  ('29', '17');
INSERT INTO ParticipacionesÁrbitros (idPartido, idÁrbitro) VALUES  ('30', '18');
INSERT INTO ParticipacionesÁrbitros (idPartido, idÁrbitro) VALUES  ('31', '19');
INSERT INTO ParticipacionesÁrbitros (idPartido, idÁrbitro) VALUES  ('32', '20');
INSERT INTO ParticipacionesÁrbitros (idPartido, idÁrbitro) VALUES  ('33', '21');
INSERT INTO ParticipacionesÁrbitros (idPartido, idÁrbitro) VALUES  ('34', '22');
INSERT INTO ParticipacionesÁrbitros (idPartido, idÁrbitro) VALUES  ('35', '23');
INSERT INTO ParticipacionesÁrbitros (idPartido, idÁrbitro) VALUES  ('36', '24');
INSERT INTO ParticipacionesÁrbitros (idPartido, idÁrbitro) VALUES  ('37', '25');
INSERT INTO ParticipacionesÁrbitros (idPartido, idÁrbitro) VALUES  ('38', '26');
INSERT INTO ParticipacionesÁrbitros (idPartido, idÁrbitro) VALUES  ('39', '146');

CREATE TABLE EventoDeReclutamiento (
	idEventoDeReclutamiento INTEGER NOT NULL PRIMARY KEY,
	fechaRealización DATE NOT NULL	
);


INSERT INTO EventoDeReclutamiento (idEventoDeReclutamiento, fechaRealización) VALUES  (1, '04/09/2021');

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

INSERT INTO Reclutamientos (idCandidato, idEquipo, ronda, selección, idEventoDeReclutamiento) VALUES  ('12', 1, 1, 1, '1');
INSERT INTO Reclutamientos (idCandidato, idEquipo, ronda, selección, idEventoDeReclutamiento) VALUES  ('7', 8, 1, 2, '1');
INSERT INTO Reclutamientos (idCandidato, idEquipo, ronda, selección, idEventoDeReclutamiento) VALUES  ('3', 4, 1, 3, '1');
INSERT INTO Reclutamientos (idCandidato, idEquipo, ronda, selección, idEventoDeReclutamiento) VALUES  ('14', 5, 1, 4, '1');
INSERT INTO Reclutamientos (idCandidato, idEquipo, ronda, selección, idEventoDeReclutamiento) VALUES  ('6', 2, 1, 5, '1');
INSERT INTO Reclutamientos (idCandidato, idEquipo, ronda, selección, idEventoDeReclutamiento) VALUES  ('2', 3, 1, 6, '1');
INSERT INTO Reclutamientos (idCandidato, idEquipo, ronda, selección, idEventoDeReclutamiento) VALUES  ('15', 11, 2, 1, '1');
INSERT INTO Reclutamientos (idCandidato, idEquipo, ronda, selección, idEventoDeReclutamiento) VALUES  ('10', 1, 2, 2, '1');
INSERT INTO Reclutamientos (idCandidato, idEquipo, ronda, selección, idEventoDeReclutamiento) VALUES  ('8', 5, 2, 3, '1');
INSERT INTO Reclutamientos (idCandidato, idEquipo, ronda, selección, idEventoDeReclutamiento) VALUES  ('5', 2, 2, 4, '1');
INSERT INTO Reclutamientos (idCandidato, idEquipo, ronda, selección, idEventoDeReclutamiento) VALUES  ('13', 7, 2, 5, '1');
INSERT INTO Reclutamientos (idCandidato, idEquipo, ronda, selección, idEventoDeReclutamiento) VALUES  ('1', 8, 2, 6, '1');


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

INSERT INTO Jugadores (idPersona, dorsal, fechaDeNacimiento, altura, peso, fechaInicioCarreraProfesional, fechaRetiro, idInstituciónProcedencia, idCiudadNacimiento, idPosición, idEquipo) VALUES (27, 48, TO_DATE('06/03/2000', 'DD/MM/YYYY'), 186, 130.1, TO_DATE('06/03/2019', 'DD/MM/YYYY'), null, '12', '5', '1', '1');
INSERT INTO Jugadores (idPersona, dorsal, fechaDeNacimiento, altura, peso, fechaInicioCarreraProfesional, fechaRetiro, idInstituciónProcedencia, idCiudadNacimiento, idPosición, idEquipo) VALUES (28, 59, TO_DATE('18/06/1997', 'DD/MM/YYYY'), 218, 87.3, TO_DATE('18/06/2016', 'DD/MM/YYYY'), null, '6', '25', '2', '2');
INSERT INTO Jugadores (idPersona, dorsal, fechaDeNacimiento, altura, peso, fechaInicioCarreraProfesional, fechaRetiro, idInstituciónProcedencia, idCiudadNacimiento, idPosición, idEquipo) VALUES (29, 21, TO_DATE('02/06/2001', 'DD/MM/YYYY'), 199, 147.4, TO_DATE('02/06/2020', 'DD/MM/YYYY'), null, '7', '21', '3', '3');
INSERT INTO Jugadores (idPersona, dorsal, fechaDeNacimiento, altura, peso, fechaInicioCarreraProfesional, fechaRetiro, idInstituciónProcedencia, idCiudadNacimiento, idPosición, idEquipo) VALUES (30, 27, TO_DATE('08/22/1999', 'MM/DD/YYYY'), 199, 96.6, TO_DATE('08/28/2017', 'MM/DD/YYYY'), null, '1', '4', '4', '4');
INSERT INTO Jugadores (idPersona, dorsal, fechaDeNacimiento, altura, peso, fechaInicioCarreraProfesional, fechaRetiro, idInstituciónProcedencia, idCiudadNacimiento, idPosición, idEquipo) VALUES (31, 46, TO_DATE('06/18/1997', 'MM/DD/YYYY'), 213, 84.0, TO_DATE('06/18/2016', 'MM/DD/YYYY'), null, '4', '2', '5', '5');
INSERT INTO Jugadores (idPersona, dorsal, fechaDeNacimiento, altura, peso, fechaInicioCarreraProfesional, fechaRetiro, idInstituciónProcedencia, idCiudadNacimiento, idPosición, idEquipo) VALUES (32, 24, TO_DATE('05/10/2000', 'MM/DD/YYYY'), 191, 86.8, TO_DATE('05/10/2019', 'MM/DD/YYYY'), null, '8', '24', '1', '6');
INSERT INTO Jugadores (idPersona, dorsal, fechaDeNacimiento, altura, peso, fechaInicioCarreraProfesional, fechaRetiro, idInstituciónProcedencia, idCiudadNacimiento, idPosición, idEquipo) VALUES (33, 22, TO_DATE('10/10/1997', 'MM/DD/YYYY'), 202, 93.4, TO_DATE('10/10/2016', 'MM/DD/YYYY'), null, '15', '27', '2', '7');
INSERT INTO Jugadores (idPersona, dorsal, fechaDeNacimiento, altura, peso, fechaInicioCarreraProfesional, fechaRetiro, idInstituciónProcedencia, idCiudadNacimiento, idPosición, idEquipo) VALUES (34, 18, TO_DATE('12/17/1999', 'MM/DD/YYYY'), 193, 107.1, TO_DATE('12/17/2018', 'MM/DD/YYYY'), null, '5', '18', '3', '8');
INSERT INTO Jugadores (idPersona, dorsal, fechaDeNacimiento, altura, peso, fechaInicioCarreraProfesional, fechaRetiro, idInstituciónProcedencia, idCiudadNacimiento, idPosición, idEquipo) VALUES (35, 13, TO_DATE('06/18/2002', 'MM/DD/YYYY'), 201, 97.5, TO_DATE('06/18/2021', 'MM/DD/YYYY'), null, '9', '9', '4', '9');
INSERT INTO Jugadores (idPersona, dorsal, fechaDeNacimiento, altura, peso, fechaInicioCarreraProfesional, fechaRetiro, idInstituciónProcedencia, idCiudadNacimiento, idPosición, idEquipo) VALUES (36, 19, TO_DATE('06/03/1998', 'MM/DD/YYYY'), 193, 103.7, TO_DATE('06/03/2017', 'MM/DD/YYYY'), null, '3', '6', '5', '10');
INSERT INTO Jugadores (idPersona, dorsal, fechaDeNacimiento, altura, peso, fechaInicioCarreraProfesional, fechaRetiro, idInstituciónProcedencia, idCiudadNacimiento, idPosición, idEquipo) VALUES (37, 40, TO_DATE('04/03/1999', 'MM/DD/YYYY'), 187, 148.6, TO_DATE('04/03/2018', 'MM/DD/YYYY'), null, '13', '28', '1', '11');
INSERT INTO Jugadores (idPersona, dorsal, fechaDeNacimiento, altura, peso, fechaInicioCarreraProfesional, fechaRetiro, idInstituciónProcedencia, idCiudadNacimiento, idPosición, idEquipo) VALUES (38, 33, TO_DATE('06/02/1998', 'MM/DD/YYYY'), 193, 91.5, TO_DATE('06/02/2017', 'MM/DD/YYYY'), null, '14', '12', '2', '12');
INSERT INTO Jugadores (idPersona, dorsal, fechaDeNacimiento, altura, peso, fechaInicioCarreraProfesional, fechaRetiro, idInstituciónProcedencia, idCiudadNacimiento, idPosición, idEquipo) VALUES (39, 42, TO_DATE('30/10/2000', 'DD/MM/YYYY'), 211, 128.1, TO_DATE('30/10/2019', 'DD/MM/YYYY'), null, '10', '22', '3', '1');
INSERT INTO Jugadores (idPersona, dorsal, fechaDeNacimiento, altura, peso, fechaInicioCarreraProfesional, fechaRetiro, idInstituciónProcedencia, idCiudadNacimiento, idPosición, idEquipo) VALUES (40, 55, TO_DATE('29/03/2002', 'DD/MM/YYYY'), 195, 147.9, TO_DATE('29/03/2021', 'DD/MM/YYYY'), null, '11', '26', '4', '2');

INSERT INTO Jugadores (idPersona, dorsal, fechaDeNacimiento, altura, peso, fechaInicioCarreraProfesional, fechaRetiro, idInstituciónProcedencia, idCiudadNacimiento, idPosición, idEquipo) VALUES  (41, 17, TO_DATE('12/03/2001', 'DD/MM/YYYY'), 193, 140.3, TO_DATE('12/03/2020', 'DD/MM/YYYY'), null, '2', '20', '5', '3');
INSERT INTO Jugadores (idPersona, dorsal, fechaDeNacimiento, altura, peso, fechaInicioCarreraProfesional, fechaRetiro, idInstituciónProcedencia, idCiudadNacimiento, idPosición, idEquipo) VALUES  (42, 51, TO_DATE('27/03/2001', 'DD/MM/YYYY'), 183, 116.4, TO_DATE('27/03/2020', 'DD/MM/YYYY'), null, '2', '30', '1', '4');
INSERT INTO Jugadores (idPersona, dorsal, fechaDeNacimiento, altura, peso, fechaInicioCarreraProfesional, fechaRetiro, idInstituciónProcedencia, idCiudadNacimiento, idPosición, idEquipo) VALUES  (43, 50, TO_DATE('24/05/2002', 'DD/MM/YYYY'), 216, 150.0, TO_DATE('24/05/2021', 'DD/MM/YYYY'), null, '10', '16', '2', '5');
INSERT INTO Jugadores (idPersona, dorsal, fechaDeNacimiento, altura, peso, fechaInicioCarreraProfesional, fechaRetiro, idInstituciónProcedencia, idCiudadNacimiento, idPosición, idEquipo) VALUES  (44, 54, TO_DATE('02/08/2000', 'DD/MM/YYYY'), 185, 131.4, TO_DATE('02/08/2019', 'DD/MM/YYYY'), null, '12', '13', '3', '6');
INSERT INTO Jugadores (idPersona, dorsal, fechaDeNacimiento, altura, peso, fechaInicioCarreraProfesional, fechaRetiro, idInstituciónProcedencia, idCiudadNacimiento, idPosición, idEquipo) VALUES  (45, 36, TO_DATE('18/06/1998', 'DD/MM/YYYY'), 189, 86.4, TO_DATE('18/06/2017', 'DD/MM/YYYY'), null, '15', '10', '4', '7');
INSERT INTO Jugadores (idPersona, dorsal, fechaDeNacimiento, altura, peso, fechaInicioCarreraProfesional, fechaRetiro, idInstituciónProcedencia, idCiudadNacimiento, idPosición, idEquipo) VALUES  (46, 16, TO_DATE('18/06/2002', 'DD/MM/YYYY'), 194, 96.2, TO_DATE('18/06/2021', 'DD/MM/YYYY'), null, '7', '19', '5', '8');
INSERT INTO Jugadores (idPersona, dorsal, fechaDeNacimiento, altura, peso, fechaInicioCarreraProfesional, fechaRetiro, idInstituciónProcedencia, idCiudadNacimiento, idPosición, idEquipo) VALUES  (47, 23, TO_DATE('09/06/2000', 'DD/MM/YYYY'), 195, 102.4, TO_DATE('09/06/2019', 'DD/MM/YYYY'), null, '3', '11', '1', '9');
INSERT INTO Jugadores (idPersona, dorsal, fechaDeNacimiento, altura, peso, fechaInicioCarreraProfesional, fechaRetiro, idInstituciónProcedencia, idCiudadNacimiento, idPosición, idEquipo) VALUES  (48, 27, TO_DATE('04/09/1999', 'DD/MM/YYYY'), 211, 128.7, TO_DATE('04/09/2018', 'DD/MM/YYYY'), null, '11', '23', '2', '10');
INSERT INTO Jugadores (idPersona, dorsal, fechaDeNacimiento, altura, peso, fechaInicioCarreraProfesional, fechaRetiro, idInstituciónProcedencia, idCiudadNacimiento, idPosición, idEquipo) VALUES  (49, 34, TO_DATE('16/02/1998', 'DD/MM/YYYY'), 208, 100.7, TO_DATE('16/02/2017', 'DD/MM/YYYY'), null, '6', '14', '3', '11');
INSERT INTO Jugadores (idPersona, dorsal, fechaDeNacimiento, altura, peso, fechaInicioCarreraProfesional, fechaRetiro, idInstituciónProcedencia, idCiudadNacimiento, idPosición, idEquipo) VALUES  (50, 15, TO_DATE('02/05/2001', 'DD/MM/YYYY'), 205, 143.9, TO_DATE('02/05/2020', 'DD/MM/YYYY'), null, '9', '1', '4', '12');
INSERT INTO Jugadores (idPersona, dorsal, fechaDeNacimiento, altura, peso, fechaInicioCarreraProfesional, fechaRetiro, idInstituciónProcedencia, idCiudadNacimiento, idPosición, idEquipo) VALUES  (51, 53, TO_DATE('26/10/1998', 'DD/MM/YYYY'), 205, 115.0, TO_DATE('26/10/2017', 'DD/MM/YYYY'), null, '1', '3', '5', '1');
INSERT INTO Jugadores (idPersona, dorsal, fechaDeNacimiento, altura, peso, fechaInicioCarreraProfesional, fechaRetiro, idInstituciónProcedencia, idCiudadNacimiento, idPosición, idEquipo) VALUES  (52, 45, TO_DATE('18/06/1999', 'DD/MM/YYYY'), 199, 84.7, TO_DATE('18/06/2018', 'DD/MM/YYYY'), null, '14', '7', '1', '2');
INSERT INTO Jugadores (idPersona, dorsal, fechaDeNacimiento, altura, peso, fechaInicioCarreraProfesional, fechaRetiro, idInstituciónProcedencia, idCiudadNacimiento, idPosición, idEquipo) VALUES  (53, 8, TO_DATE('19/06/1997', 'DD/MM/YYYY'), 216, 91.2, TO_DATE('19/06/2016', 'DD/MM/YYYY'), null, '8', '29', '2', '3');
INSERT INTO Jugadores (idPersona, dorsal, fechaDeNacimiento, altura, peso, fechaInicioCarreraProfesional, fechaRetiro, idInstituciónProcedencia, idCiudadNacimiento, idPosición, idEquipo) VALUES  (54, 55, TO_DATE('12/06/1998', 'DD/MM/YYYY'), 199, 154.9, TO_DATE('12/06/2017', 'DD/MM/YYYY'), null, '5', '17', '3', '4');
INSERT INTO Jugadores (idPersona, dorsal, fechaDeNacimiento, altura, peso, fechaInicioCarreraProfesional, fechaRetiro, idInstituciónProcedencia, idCiudadNacimiento, idPosición, idEquipo) VALUES  (55, 23, TO_DATE('07/04/2001', 'DD/MM/YYYY'), 202, 143.7, TO_DATE('07/04/2020', 'DD/MM/YYYY'), null, '13', '15', '4', '5');

INSERT INTO Jugadores (idPersona, dorsal, fechaDeNacimiento, altura, peso, fechaInicioCarreraProfesional, fechaRetiro, idInstituciónProcedencia, idCiudadNacimiento, idPosición, idEquipo) VALUES  (56, 6, TO_DATE('15/11/2000', 'DD/MM/YYYY'), 200, 136.9, TO_DATE('15/11/2019', 'DD/MM/YYYY'), null, '4', '8', '5', '6');
INSERT INTO Jugadores (idPersona, dorsal, fechaDeNacimiento, altura, peso, fechaInicioCarreraProfesional, fechaRetiro, idInstituciónProcedencia, idCiudadNacimiento, idPosición, idEquipo) VALUES  (57, 11, TO_DATE('25/06/2000', 'DD/MM/YYYY'), 184, 137.3, TO_DATE('25/06/2019', 'DD/MM/YYYY'), null, '12', '9', '1', '7');
INSERT INTO Jugadores (idPersona, dorsal, fechaDeNacimiento, altura, peso, fechaInicioCarreraProfesional, fechaRetiro, idInstituciónProcedencia, idCiudadNacimiento, idPosición, idEquipo) VALUES  (58, 57, TO_DATE('17/06/2000', 'DD/MM/YYYY'), 205, 110.7, TO_DATE('17/06/2019', 'DD/MM/YYYY'), null, '2', '12', '2', '8');
INSERT INTO Jugadores (idPersona, dorsal, fechaDeNacimiento, altura, peso, fechaInicioCarreraProfesional, fechaRetiro, idInstituciónProcedencia, idCiudadNacimiento, idPosición, idEquipo) VALUES  (59, 11, TO_DATE('21/05/1999', 'DD/MM/YYYY'), 194, 143.5, TO_DATE('21/05/2018', 'DD/MM/YYYY'), null, '1', '19', '3', '9');
INSERT INTO Jugadores (idPersona, dorsal, fechaDeNacimiento, altura, peso, fechaInicioCarreraProfesional, fechaRetiro, idInstituciónProcedencia, idCiudadNacimiento, idPosición, idEquipo) VALUES  (60, 4, TO_DATE('17/08/2000', 'DD/MM/YYYY'), 205, 81.2, TO_DATE('17/08/2019', 'DD/MM/YYYY'), null, '8', '14', '4', '10');
INSERT INTO Jugadores (idPersona, dorsal, fechaDeNacimiento, altura, peso, fechaInicioCarreraProfesional, fechaRetiro, idInstituciónProcedencia, idCiudadNacimiento, idPosición, idEquipo) VALUES  (61, 7, TO_DATE('28/09/2001', 'DD/MM/YYYY'), 214, 132.4, TO_DATE('28/09/2020', 'DD/MM/YYYY'), null, '5', '20', '5', '11');
INSERT INTO Jugadores (idPersona, dorsal, fechaDeNacimiento, altura, peso, fechaInicioCarreraProfesional, fechaRetiro, idInstituciónProcedencia, idCiudadNacimiento, idPosición, idEquipo) VALUES  (62, 22, TO_DATE('28/02/2001', 'DD/MM/YYYY'), 205, 92.5, TO_DATE('28/02/2020', 'DD/MM/YYYY'), null, '7', '17', '1', '12');
INSERT INTO Jugadores (idPersona, dorsal, fechaDeNacimiento, altura, peso, fechaInicioCarreraProfesional, fechaRetiro, idInstituciónProcedencia, idCiudadNacimiento, idPosición, idEquipo) VALUES  (63, 10, TO_DATE('18/03/2002', 'DD/MM/YYYY'), 217, 154.0, TO_DATE('18/03/2021', 'DD/MM/YYYY'), null, '9', '26', '2', '1');
INSERT INTO Jugadores (idPersona, dorsal, fechaDeNacimiento, altura, peso, fechaInicioCarreraProfesional, fechaRetiro, idInstituciónProcedencia, idCiudadNacimiento, idPosición, idEquipo) VALUES  (64, 10, TO_DATE('18/06/1997', 'DD/MM/YYYY'), 213, 98.0, TO_DATE('18/06/2016', 'DD/MM/YYYY'), null, '11', '7', '3', '2');
INSERT INTO Jugadores (idPersona, dorsal, fechaDeNacimiento, altura, peso, fechaInicioCarreraProfesional, fechaRetiro, idInstituciónProcedencia, idCiudadNacimiento, idPosición, idEquipo) VALUES  (65, 38, TO_DATE('30/05/2001', 'DD/MM/YYYY'), 198, 113.8, TO_DATE('30/05/2020', 'DD/MM/YYYY'), null, '4', '22', '4', '3');
INSERT INTO Jugadores (idPersona, dorsal, fechaDeNacimiento, altura, peso, fechaInicioCarreraProfesional, fechaRetiro, idInstituciónProcedencia, idCiudadNacimiento, idPosición, idEquipo) VALUES  (66, 39, TO_DATE('18/06/1999', 'DD/MM/YYYY'), 190, 95.3, TO_DATE('18/06/2018', 'DD/MM/YYYY'), null, '6', '2', '5', '4');
INSERT INTO Jugadores (idPersona, dorsal, fechaDeNacimiento, altura, peso, fechaInicioCarreraProfesional, fechaRetiro, idInstituciónProcedencia, idCiudadNacimiento, idPosición, idEquipo) VALUES  (67, 40, TO_DATE('04/09/2000', 'DD/MM/YYYY'), 219, 158.2, TO_DATE('04/09/2019', 'DD/MM/YYYY'), null, '3', '10', '1', '5');
INSERT INTO Jugadores (idPersona, dorsal, fechaDeNacimiento, altura, peso, fechaInicioCarreraProfesional, fechaRetiro, idInstituciónProcedencia, idCiudadNacimiento, idPosición, idEquipo) VALUES  (68, 36, TO_DATE('13/03/2001', 'DD/MM/YYYY'), 200, 81.6, TO_DATE('13/03/2020', 'DD/MM/YYYY'), null, '14', '24', '2', '6');
INSERT INTO Jugadores (idPersona, dorsal, fechaDeNacimiento, altura, peso, fechaInicioCarreraProfesional, fechaRetiro, idInstituciónProcedencia, idCiudadNacimiento, idPosición, idEquipo) VALUES  (69, 48, TO_DATE('23/05/2001', 'DD/MM/YYYY'), 189, 110.0, TO_DATE('23/05/2020', 'DD/MM/YYYY'), null, '15', '11', '3', '7');
INSERT INTO Jugadores (idPersona, dorsal, fechaDeNacimiento, altura, peso, fechaInicioCarreraProfesional, fechaRetiro, idInstituciónProcedencia, idCiudadNacimiento, idPosición, idEquipo) VALUES  (70, 13, TO_DATE('15/06/1998', 'DD/MM/YYYY'), 188, 140.9, TO_DATE('15/06/2017', 'DD/MM/YYYY'), null, '10', '16', '4', '8');
INSERT INTO Jugadores (idPersona, dorsal, fechaDeNacimiento, altura, peso, fechaInicioCarreraProfesional, fechaRetiro, idInstituciónProcedencia, idCiudadNacimiento, idPosición, idEquipo) VALUES  (71, 7, TO_DATE('22/12/2000', 'DD/MM/YYYY'), 205, 89.1, TO_DATE('22/12/2019', 'DD/MM/YYYY'), null, '13', '5', '5', '9');
INSERT INTO Jugadores (idPersona, dorsal, fechaDeNacimiento, altura, peso, fechaInicioCarreraProfesional, fechaRetiro, idInstituciónProcedencia, idCiudadNacimiento, idPosición, idEquipo) VALUES  (72, 17, TO_DATE('25/08/1998', 'DD/MM/YYYY'), 215, 108.5, TO_DATE('25/08/2017', 'DD/MM/YYYY'), null, '1', '21', '1', '10');
INSERT INTO Jugadores (idPersona, dorsal, fechaDeNacimiento, altura, peso, fechaInicioCarreraProfesional, fechaRetiro, idInstituciónProcedencia, idCiudadNacimiento, idPosición, idEquipo) VALUES  (73, 5, TO_DATE('07/06/2002', 'DD/MM/YYYY'), 212, 106.7, TO_DATE('07/06/2021', 'DD/MM/YYYY'), null, '12', '30', '2', '11');
INSERT INTO Jugadores (idPersona, dorsal, fechaDeNacimiento, altura, peso, fechaInicioCarreraProfesional, fechaRetiro, idInstituciónProcedencia, idCiudadNacimiento, idPosición, idEquipo) VALUES  (74, 29, TO_DATE('21/08/1997', 'DD/MM/YYYY'), 194, 105.5, TO_DATE('21/08/2016', 'DD/MM/YYYY'), null, '6', '18', '3', '12');
INSERT INTO Jugadores (idPersona, dorsal, fechaDeNacimiento, altura, peso, fechaInicioCarreraProfesional, fechaRetiro, idInstituciónProcedencia, idCiudadNacimiento, idPosición, idEquipo) VALUES  (75, 18, TO_DATE('27/08/2000', 'DD/MM/YYYY'), 204, 124.8, TO_DATE('27/08/2019', 'DD/MM/YYYY'), null, '7', '25', '4', '1');
INSERT INTO Jugadores (idPersona, dorsal, fechaDeNacimiento, altura, peso, fechaInicioCarreraProfesional, fechaRetiro, idInstituciónProcedencia, idCiudadNacimiento, idPosición, idEquipo) VALUES  (76, 8, TO_DATE('17/02/1999', 'DD/MM/YYYY'), 196, 159.6, TO_DATE('17/02/2018', 'DD/MM/YYYY'), null, '14', '6', '5', '2');
INSERT INTO Jugadores (idPersona, dorsal, fechaDeNacimiento, altura, peso, fechaInicioCarreraProfesional, fechaRetiro, idInstituciónProcedencia, idCiudadNacimiento, idPosición, idEquipo) VALUES  (77, 12, TO_DATE('27/05/2001', 'DD/MM/YYYY'), 211, 89.6, TO_DATE('27/05/2020', 'DD/MM/YYYY'), null, '11', '23', '1', '3');
INSERT INTO Jugadores (idPersona, dorsal, fechaDeNacimiento, altura, peso, fechaInicioCarreraProfesional, fechaRetiro, idInstituciónProcedencia, idCiudadNacimiento, idPosición, idEquipo) VALUES  (78, 51, TO_DATE('26/08/2000', 'DD/MM/YYYY'), 208, 127.1, TO_DATE('26/08/2019', 'DD/MM/YYYY'), null, '2', '27', '2', '4');
INSERT INTO Jugadores (idPersona, dorsal, fechaDeNacimiento, altura, peso, fechaInicioCarreraProfesional, fechaRetiro, idInstituciónProcedencia, idCiudadNacimiento, idPosición, idEquipo) VALUES  (79, 27, TO_DATE('18/06/2001', 'DD/MM/YYYY'), 186, 151.6, TO_DATE('18/06/2020', 'DD/MM/YYYY'), null, '3', '29', '3', '5');
INSERT INTO Jugadores (idPersona, dorsal, fechaDeNacimiento, altura, peso, fechaInicioCarreraProfesional, fechaRetiro, idInstituciónProcedencia, idCiudadNacimiento, idPosición, idEquipo) VALUES  (80, 3, TO_DATE('02/03/2000', 'DD/MM/YYYY'), 199, 123.7, TO_DATE('02/03/2019', 'DD/MM/YYYY'), null, '4', '4', '4', '6');
INSERT INTO Jugadores (idPersona, dorsal, fechaDeNacimiento, altura, peso, fechaInicioCarreraProfesional, fechaRetiro, idInstituciónProcedencia, idCiudadNacimiento, idPosición, idEquipo) VALUES (81, 50, TO_DATE('15/09/2000', 'DD/MM/YYYY'), 212, 134.5, TO_DATE('15/09/2019', 'DD/MM/YYYY'), null, '5', '3', '5', '7');
INSERT INTO Jugadores (idPersona, dorsal, fechaDeNacimiento, altura, peso, fechaInicioCarreraProfesional, fechaRetiro, idInstituciónProcedencia, idCiudadNacimiento, idPosición, idEquipo) VALUES (82, 40, TO_DATE('02/04/1999', 'DD/MM/YYYY'), 204, 97.8, TO_DATE('02/04/2018', 'DD/MM/YYYY'), null, '13', '1', '1', '8');
INSERT INTO Jugadores (idPersona, dorsal, fechaDeNacimiento, altura, peso, fechaInicioCarreraProfesional, fechaRetiro, idInstituciónProcedencia, idCiudadNacimiento, idPosición, idEquipo) VALUES (83, 14, TO_DATE('15/01/2000', 'DD/MM/YYYY'), 217, 137.7, TO_DATE('15/01/2019', 'DD/MM/YYYY'), null, '9', '15', '2', '9');
INSERT INTO Jugadores (idPersona, dorsal, fechaDeNacimiento, altura, peso, fechaInicioCarreraProfesional, fechaRetiro, idInstituciónProcedencia, idCiudadNacimiento, idPosición, idEquipo) VALUES (84, 58, TO_DATE('14/10/1997', 'DD/MM/YYYY'), 219, 89.8, TO_DATE('14/10/2016', 'DD/MM/YYYY'), null, '8', '8', '3', '10');
INSERT INTO Jugadores (idPersona, dorsal, fechaDeNacimiento, altura, peso, fechaInicioCarreraProfesional, fechaRetiro, idInstituciónProcedencia, idCiudadNacimiento, idPosición, idEquipo) VALUES (85, 60, TO_DATE('10/10/2000', 'DD/MM/YYYY'), 189, 100.8, TO_DATE('10/10/2019', 'DD/MM/YYYY'), null, '10', '28', '4', '11');
INSERT INTO Jugadores (idPersona, dorsal, fechaDeNacimiento, altura, peso, fechaInicioCarreraProfesional, fechaRetiro, idInstituciónProcedencia, idCiudadNacimiento, idPosición, idEquipo) VALUES (86, 3, TO_DATE('18/03/2002', 'DD/MM/YYYY'), 203, 160.7, TO_DATE('18/03/2021', 'DD/MM/YYYY'), null, '15', '13', '5', '12');
INSERT INTO Jugadores (idPersona, dorsal, fechaDeNacimiento, altura, peso, fechaInicioCarreraProfesional, fechaRetiro, idInstituciónProcedencia, idCiudadNacimiento, idPosición, idEquipo) VALUES (88, 16, TO_DATE('20/09/2000', 'DD/MM/YYYY'), 219, 94.7, TO_DATE('20/09/2019', 'DD/MM/YYYY'), TO_DATE('21/07/2022', 'DD/MM/YYYY'), '15', '12', '1', '1');
INSERT INTO Jugadores (idPersona, dorsal, fechaDeNacimiento, altura, peso, fechaInicioCarreraProfesional, fechaRetiro, idInstituciónProcedencia, idCiudadNacimiento, idPosición, idEquipo) VALUES (89, 52, TO_DATE('23/01/1998', 'DD/MM/YYYY'), 188, 101.6, TO_DATE('23/01/2017', 'DD/MM/YYYY'), TO_DATE('02/11/2022', 'DD/MM/YYYY'), '14', '25', '2', '2');
INSERT INTO Jugadores (idPersona, dorsal, fechaDeNacimiento, altura, peso, fechaInicioCarreraProfesional, fechaRetiro, idInstituciónProcedencia, idCiudadNacimiento, idPosición, idEquipo) VALUES (90, 33, TO_DATE('13/07/2001', 'DD/MM/YYYY'), 187, 131.2, TO_DATE('13/07/2020', 'DD/MM/YYYY'), TO_DATE('05/10/2022', 'DD/MM/YYYY'), '1', '18', '3', '3');
INSERT INTO Jugadores (idPersona, dorsal, fechaDeNacimiento, altura, peso, fechaInicioCarreraProfesional, fechaRetiro, idInstituciónProcedencia, idCiudadNacimiento, idPosición, idEquipo) VALUES (91, 37, TO_DATE('27/06/1999', 'DD/MM/YYYY'), 188, 84.8, TO_DATE('27/06/2018', 'DD/MM/YYYY'), TO_DATE('10/04/2022', 'DD/MM/YYYY'), '2', '13', '4', '4');
INSERT INTO Jugadores (idPersona, dorsal, fechaDeNacimiento, altura, peso, fechaInicioCarreraProfesional, fechaRetiro, idInstituciónProcedencia, idCiudadNacimiento, idPosición, idEquipo) VALUES (92, 26, TO_DATE('31/08/2000', 'DD/MM/YYYY'), 214, 83.8, TO_DATE('31/08/2019', 'DD/MM/YYYY'), TO_DATE('08/09/2021', 'DD/MM/YYYY'), '8', '8', '5', '5');
INSERT INTO Jugadores (idPersona, dorsal, fechaDeNacimiento, altura, peso, fechaInicioCarreraProfesional, fechaRetiro, idInstituciónProcedencia, idCiudadNacimiento, idPosición, idEquipo) VALUES (93, 33, TO_DATE('18/06/1997', 'DD/MM/YYYY'), 199, 157.0, TO_DATE('18/06/2016', 'DD/MM/YYYY'), TO_DATE('06/11/2022', 'DD/MM/YYYY'), '9', '14', '1', '6');
INSERT INTO Jugadores (idPersona, dorsal, fechaDeNacimiento, altura, peso, fechaInicioCarreraProfesional, fechaRetiro, idInstituciónProcedencia, idCiudadNacimiento, idPosición, idEquipo) VALUES (94, 12, TO_DATE('21/07/1997', 'DD/MM/YYYY'), 183, 109.4, TO_DATE('21/07/2016', 'DD/MM/YYYY'), TO_DATE('10/07/2022', 'DD/MM/YYYY'), '10', '5', '2', '7');
INSERT INTO Jugadores (idPersona, dorsal, fechaDeNacimiento, altura, peso, fechaInicioCarreraProfesional, fechaRetiro, idInstituciónProcedencia, idCiudadNacimiento, idPosición, idEquipo) VALUES (95, 10, TO_DATE('18/06/2001', 'DD/MM/YYYY'), 203, 135.2, TO_DATE('18/06/2020', 'DD/MM/YYYY'), TO_DATE('06/05/2022', 'DD/MM/YYYY'), '13', '2', '3', '8');
INSERT INTO Jugadores (idPersona, dorsal, fechaDeNacimiento, altura, peso, fechaInicioCarreraProfesional, fechaRetiro, idInstituciónProcedencia, idCiudadNacimiento, idPosición, idEquipo) VALUES (96, 5, TO_DATE('03/09/1997', 'DD/MM/YYYY'), 215, 121.2, TO_DATE('03/09/2016', 'DD/MM/YYYY'), TO_DATE('26/12/2021', 'DD/MM/YYYY'), '7', '28', '4', '9');
INSERT INTO Jugadores (idPersona, dorsal, fechaDeNacimiento, altura, peso, fechaInicioCarreraProfesional, fechaRetiro, idInstituciónProcedencia, idCiudadNacimiento, idPosición, idEquipo) VALUES (97, 18, TO_DATE('26/05/2002', 'DD/MM/YYYY'), 211, 154.3, TO_DATE('26/05/2021', 'DD/MM/YYYY'), TO_DATE('20/01/2022', 'DD/MM/YYYY'), '5', '26', '5', '10');
INSERT INTO Jugadores (idPersona, dorsal, fechaDeNacimiento, altura, peso, fechaInicioCarreraProfesional, fechaRetiro, idInstituciónProcedencia, idCiudadNacimiento, idPosición, idEquipo) VALUES (98, 47, TO_DATE('18/06/2000', 'DD/MM/YYYY'), 200, 96.0, TO_DATE('18/06/2019', 'DD/MM/YYYY'), TO_DATE('01/06/2022', 'DD/MM/YYYY'), '6', '4', '1', '11');
INSERT INTO Jugadores (idPersona, dorsal, fechaDeNacimiento, altura, peso, fechaInicioCarreraProfesional, fechaRetiro, idInstituciónProcedencia, idCiudadNacimiento, idPosición, idEquipo) VALUES (99, 19, TO_DATE('08/09/1997', 'DD/MM/YYYY'), 197, 93.6, TO_DATE('08/09/2016', 'DD/MM/YYYY'), TO_DATE('18/04/2022', 'DD/MM/YYYY'), '3', '9', '2', '12');
INSERT INTO Jugadores (idPersona, dorsal, fechaDeNacimiento, altura, peso, fechaInicioCarreraProfesional, fechaRetiro, idInstituciónProcedencia, idCiudadNacimiento, idPosición, idEquipo) VALUES (100, 14, TO_DATE('17/08/1998', 'DD/MM/YYYY'), 205, 158.1, TO_DATE('17/08/2017', 'DD/MM/YYYY'), TO_DATE('19/09/2021', 'DD/MM/YYYY'), '11', '20', '3', '1');
INSERT INTO Jugadores (idPersona, dorsal, fechaDeNacimiento, altura, peso, fechaInicioCarreraProfesional, fechaRetiro, idInstituciónProcedencia, idCiudadNacimiento, idPosición, idEquipo) VALUES (101, 22, TO_DATE('06/05/2000', 'DD/MM/YYYY'), 190, 124.6, TO_DATE('06/05/2019', 'DD/MM/YYYY'), TO_DATE('17/06/2022', 'DD/MM/YYYY'), '4', '29', '4', '2');
INSERT INTO Jugadores (idPersona, dorsal, fechaDeNacimiento, altura, peso, fechaInicioCarreraProfesional, fechaRetiro, idInstituciónProcedencia, idCiudadNacimiento, idPosición, idEquipo) VALUES (102, 23, TO_DATE('15/06/1999', 'DD/MM/YYYY'), 191, 159.3, TO_DATE('15/06/2018', 'DD/MM/YYYY'), TO_DATE('26/07/2022', 'DD/MM/YYYY'), '12', '22', '5', '3');

CREATE TABLE Patrocinios (
	idPatrocinador INTEGER NOT NULL,
	idJugador INTEGER NOT NULL,
	fechaInicio DATE NOT NULL,
	fechaFinalización DATE,
	
	PRIMARY KEY(idPatrocinador, idJugador),
	FOREIGN KEY (idPatrocinador) REFERENCES Patrocinadores(idPatrocinador),
	FOREIGN KEY (idJugador) REFERENCES Jugadores(idPersona)
);


INSERT INTO Patrocinios (idPatrocinador, idJugador, fechaInicio, fechaFinalización) VALUES  ('2', 86, '2019-05-12', '2019-12-12');
INSERT INTO Patrocinios (idPatrocinador, idJugador, fechaInicio, fechaFinalización) VALUES  ('4', 27, '2018-09-07', '2019-08-07');
INSERT INTO Patrocinios (idPatrocinador, idJugador, fechaInicio, fechaFinalización) VALUES  ('5', 82, '2019-05-12', null);
INSERT INTO Patrocinios (idPatrocinador, idJugador, fechaInicio, fechaFinalización) VALUES  ('10', 28, '2020-06-29', '2021-11-29');
INSERT INTO Patrocinios (idPatrocinador, idJugador, fechaInicio, fechaFinalización) VALUES  ('3', 42, '2021-10-01', null);
INSERT INTO Patrocinios (idPatrocinador, idJugador, fechaInicio, fechaFinalización) VALUES  ('1', 36, '2020-12-07', null);
INSERT INTO Patrocinios (idPatrocinador, idJugador, fechaInicio, fechaFinalización) VALUES  ('9', 86, '2018-02-09', '2018-06-09');
INSERT INTO Patrocinios (idPatrocinador, idJugador, fechaInicio, fechaFinalización) VALUES  ('8', 45, '2017-10-28', null);
INSERT INTO Patrocinios (idPatrocinador, idJugador, fechaInicio, fechaFinalización) VALUES  ('6', 76, '2022-06-18', null);
INSERT INTO Patrocinios (idPatrocinador, idJugador, fechaInicio, fechaFinalización) VALUES  ('7', 27, '2020-06-29', '2020-07-29');
INSERT INTO Patrocinios (idPatrocinador, idJugador, fechaInicio, fechaFinalización) VALUES  ('6', 30, '2017-09-11', '2018-10-11');
INSERT INTO Patrocinios (idPatrocinador, idJugador, fechaInicio, fechaFinalización) VALUES  ('4', 81, '2020-05-18', '2020-11-18');
INSERT INTO Patrocinios (idPatrocinador, idJugador, fechaInicio, fechaFinalización) VALUES  ('10', 32, '2019-09-17', '2020-07-17');
INSERT INTO Patrocinios (idPatrocinador, idJugador, fechaInicio, fechaFinalización) VALUES  ('3', 31, '2018-09-23', '2019-05-23');
INSERT INTO Patrocinios (idPatrocinador, idJugador, fechaInicio, fechaFinalización) VALUES  ('2', 46, '2020-05-18', '2021-07-18');
INSERT INTO Patrocinios (idPatrocinador, idJugador, fechaInicio, fechaFinalización) VALUES  ('9', 65, '2018-04-28', '2019-11-28');
INSERT INTO Patrocinios (idPatrocinador, idJugador, fechaInicio, fechaFinalización) VALUES  ('8', 48, '2019-03-03', '2019-10-03');
INSERT INTO Patrocinios (idPatrocinador, idJugador, fechaInicio, fechaFinalización) VALUES  ('7', 50, '2017-12-25', '2018-02-25');
INSERT INTO Patrocinios (idPatrocinador, idJugador, fechaInicio, fechaFinalización) VALUES  ('5', 28, '2018-04-28', '2019-08-28');
INSERT INTO Patrocinios (idPatrocinador, idJugador, fechaInicio, fechaFinalización) VALUES  ('1', 38, '2020-12-07', null);
INSERT INTO Patrocinios (idPatrocinador, idJugador, fechaInicio, fechaFinalización) VALUES  ('8', 79, '2021-03-08', null);
INSERT INTO Patrocinios (idPatrocinador, idJugador, fechaInicio, fechaFinalización) VALUES  ('4', 82, '2018-04-28', '2019-05-28');
INSERT INTO Patrocinios (idPatrocinador, idJugador, fechaInicio, fechaFinalización) VALUES  ('5', 27, '2017-10-28', '2017-11-28');
INSERT INTO Patrocinios (idPatrocinador, idJugador, fechaInicio, fechaFinalización) VALUES  ('1', 42, '2018-06-29', null);
INSERT INTO Patrocinios (idPatrocinador, idJugador, fechaInicio, fechaFinalización) VALUES  ('7', 31, '2018-02-09', '2019-09-09');
INSERT INTO Patrocinios (idPatrocinador, idJugador, fechaInicio, fechaFinalización) VALUES  ('6', 75, '2020-07-30', '2021-06-30');
INSERT INTO Patrocinios (idPatrocinador, idJugador, fechaInicio, fechaFinalización) VALUES  ('10', 44, '2020-02-06', null);
INSERT INTO Patrocinios (idPatrocinador, idJugador, fechaInicio, fechaFinalización) VALUES  ('2', 70, '2018-04-21', '2020-01-21');
INSERT INTO Patrocinios (idPatrocinador, idJugador, fechaInicio, fechaFinalización) VALUES  ('9', 29, '2021-03-08', null);
INSERT INTO Patrocinios (idPatrocinador, idJugador, fechaInicio, fechaFinalización) VALUES  ('3', 30, '2020-06-29', '2021-03-29');
INSERT INTO Patrocinios (idPatrocinador, idJugador, fechaInicio, fechaFinalización) VALUES  ('5', 51, '2017-10-28', '2019-08-28');
INSERT INTO Patrocinios (idPatrocinador, idJugador, fechaInicio, fechaFinalización) VALUES  ('2', 55, '2020-02-06', '2020-08-06');

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


INSERT INTO Faltas (idFalta, idJugador, idÁrbitro, idPartido, idTipoDeFalta, tiempo) VALUES  (1, '40', '23', '2', '2', 3);
INSERT INTO Faltas (idFalta, idJugador, idÁrbitro, idPartido, idTipoDeFalta, tiempo) VALUES  (2, '82', '25', '8', '4', 2);
INSERT INTO Faltas (idFalta, idJugador, idÁrbitro, idPartido, idTipoDeFalta, tiempo) VALUES  (3, '58', '18', '58', '1', 1);
INSERT INTO Faltas (idFalta, idJugador, idÁrbitro, idPartido, idTipoDeFalta, tiempo) VALUES  (4, '69', '17', '43', '2', 4);
INSERT INTO Faltas (idFalta, idJugador, idÁrbitro, idPartido, idTipoDeFalta, tiempo) VALUES  (5, '51', '19', '25', '3', 1);
INSERT INTO Faltas (idFalta, idJugador, idÁrbitro, idPartido, idTipoDeFalta, tiempo) VALUES  (6, '71', '24', '35', '4', 2);
INSERT INTO Faltas (idFalta, idJugador, idÁrbitro, idPartido, idTipoDeFalta, tiempo) VALUES  (7, '86', '26', '7', '5', 1);
INSERT INTO Faltas (idFalta, idJugador, idÁrbitro, idPartido, idTipoDeFalta, tiempo) VALUES  (8, '66', '22', '41', '2', 1);
INSERT INTO Faltas (idFalta, idJugador, idÁrbitro, idPartido, idTipoDeFalta, tiempo) VALUES  (9, '59', '20', '47', '4', 4);
INSERT INTO Faltas (idFalta, idJugador, idÁrbitro, idPartido, idTipoDeFalta, tiempo) VALUES  (10, '73', '21', '49', '5', 2);
INSERT INTO Faltas (idFalta, idJugador, idÁrbitro, idPartido, idTipoDeFalta, tiempo) VALUES  (11, '57', '26', '33', '1', 3);
INSERT INTO Faltas (idFalta, idJugador, idÁrbitro, idPartido, idTipoDeFalta, tiempo) VALUES  (12, '68', '24', '17', '2', 3);
INSERT INTO Faltas (idFalta, idJugador, idÁrbitro, idPartido, idTipoDeFalta, tiempo) VALUES  (13, '53', '25', '52', '5', 2);
INSERT INTO Faltas (idFalta, idJugador, idÁrbitro, idPartido, idTipoDeFalta, tiempo) VALUES  (14, '50', '20', '28', '3', 4);
INSERT INTO Faltas (idFalta, idJugador, idÁrbitro, idPartido, idTipoDeFalta, tiempo) VALUES  (15, '80', '19', '34', '4', 3);
INSERT INTO Faltas (idFalta, idJugador, idÁrbitro, idPartido, idTipoDeFalta, tiempo) VALUES  (16, '37', '22', '27', '3', 4);
INSERT INTO Faltas (idFalta, idJugador, idÁrbitro, idPartido, idTipoDeFalta, tiempo) VALUES  (17, '72', '23', '5', '5', 1);
INSERT INTO Faltas (idFalta, idJugador, idÁrbitro, idPartido, idTipoDeFalta, tiempo) VALUES  (18, '63', '21', '32', '1', 2);
INSERT INTO Faltas (idFalta, idJugador, idÁrbitro, idPartido, idTipoDeFalta, tiempo) VALUES  (19, '67', '18', '56', '3', 3);
INSERT INTO Faltas (idFalta, idJugador, idÁrbitro, idPartido, idTipoDeFalta, tiempo) VALUES  (20, '78', '17', '31', '4', 3);


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


INSERT INTO Traspasos (idTraspaso, idTipoDeTraspaso, idEquipoQueRealiza, idEquipoQueAcepta, idJugador, fechaRealización) VALUES (1, '3', '6', '11', '49', TO_DATE('08/02/2022', 'DD/MM/YYYY'));
INSERT INTO Traspasos (idTraspaso, idTipoDeTraspaso, idEquipoQueRealiza, idEquipoQueAcepta, idJugador, fechaRealización) VALUES (2, '2', '4', '10', '72', TO_DATE('20/02/2022', 'DD/MM/YYYY'));
INSERT INTO Traspasos (idTraspaso, idTipoDeTraspaso, idEquipoQueRealiza, idEquipoQueAcepta, idJugador, fechaRealización) VALUES (3, '1', '5', '8', '70', TO_DATE('27/10/2021', 'DD/MM/YYYY'));
INSERT INTO Traspasos (idTraspaso, idTipoDeTraspaso, idEquipoQueRealiza, idEquipoQueAcepta, idJugador, fechaRealización) VALUES (4, '1', '12', '7', '57', TO_DATE('25/12/2021', 'DD/MM/YYYY'));
INSERT INTO Traspasos (idTraspaso, idTipoDeTraspaso, idEquipoQueRealiza, idEquipoQueAcepta, idJugador, fechaRealización) VALUES (5, '2', '2', '9', '47', TO_DATE('30/12/2021', 'DD/MM/YYYY'));
INSERT INTO Traspasos (idTraspaso, idTipoDeTraspaso, idEquipoQueRealiza, idEquipoQueAcepta, idJugador, fechaRealización) VALUES (6, '3', '9', '3', '53', TO_DATE('07/11/2021', 'DD/MM/YYYY'));
INSERT INTO Traspasos (idTraspaso, idTipoDeTraspaso, idEquipoQueRealiza, idEquipoQueAcepta, idJugador, fechaRealización) VALUES (7, '3', '7', '10', '36', TO_DATE('22/12/2021', 'DD/MM/YYYY'));
INSERT INTO Traspasos (idTraspaso, idTipoDeTraspaso, idEquipoQueRealiza, idEquipoQueAcepta, idJugador, fechaRealización) VALUES (8, '1', '1', '3', '77', TO_DATE('27/11/2021', 'DD/MM/YYYY'));
INSERT INTO Traspasos (idTraspaso, idTipoDeTraspaso, idEquipoQueRealiza, idEquipoQueAcepta, idJugador, fechaRealización) VALUES (9, '2', '10', '5', '79', TO_DATE('22/05/2022', 'DD/MM/YYYY'));
INSERT INTO Traspasos (idTraspaso, idTipoDeTraspaso, idEquipoQueRealiza, idEquipoQueAcepta, idJugador, fechaRealización) VALUES (10, '2', '3', '10', '84', TO_DATE('09/02/2022', 'DD/MM/YYYY'));
INSERT INTO Traspasos (idTraspaso, idTipoDeTraspaso, idEquipoQueRealiza, idEquipoQueAcepta, idJugador, fechaRealización) VALUES (11, '1', '8', '12', '74', TO_DATE('19/04/2022', 'DD/MM/YYYY'));
INSERT INTO Traspasos (idTraspaso, idTipoDeTraspaso, idEquipoQueRealiza, idEquipoQueAcepta, idJugador, fechaRealización) VALUES (12, '3', '11', '2', '28', TO_DATE('20/11/2021', 'DD/MM/YYYY'));
INSERT INTO Traspasos (idTraspaso, idTipoDeTraspaso, idEquipoQueRealiza, idEquipoQueAcepta, idJugador, fechaRealización) VALUES (13, '2', '11', '2', '64', TO_DATE('29/11/2021', 'DD/MM/YYYY'));
INSERT INTO Traspasos (idTraspaso, idTipoDeTraspaso, idEquipoQueRealiza, idEquipoQueAcepta, idJugador, fechaRealización) VALUES (14, '1', '4', '11', '73', TO_DATE('19/03/2022', 'DD/MM/YYYY'));
INSERT INTO Traspasos (idTraspaso, idTipoDeTraspaso, idEquipoQueRealiza, idEquipoQueAcepta, idJugador, fechaRealización) VALUES (15, '3', '3', '5', '43', TO_DATE('12/11/2021', 'DD/MM/YYYY'));


CREATE TABLE PremiosJugadores (
	idJugador INTEGER NOT NULL,
        idPremio INTEGER NOT NULL,
	fechaDeRecibimiento DATE NOT NULL,
	PRIMARY KEY(idJugador,idPremio),
	FOREIGN KEY (idJugador) REFERENCES Jugadores(idPersona),
	FOREIGN KEY (idPremio) REFERENCES Premios(idPremio)
);

INSERT INTO PremiosJugadores (idJugador, idPremio, fechaDeRecibimiento) VALUES ('42', '1', TO_DATE('23/11/2021', 'DD/MM/YYYY'));
INSERT INTO PremiosJugadores (idJugador, idPremio, fechaDeRecibimiento) VALUES ('37', '2', TO_DATE('07/06/2022', 'DD/MM/YYYY'));
INSERT INTO PremiosJugadores (idJugador, idPremio, fechaDeRecibimiento) VALUES ('67', '3', TO_DATE('14/06/2022', 'DD/MM/YYYY'));
INSERT INTO PremiosJugadores (idJugador, idPremio, fechaDeRecibimiento) VALUES ('52', '4', TO_DATE('27/01/2022', 'DD/MM/YYYY'));
INSERT INTO PremiosJugadores (idJugador, idPremio, fechaDeRecibimiento) VALUES ('39', '5', TO_DATE('11/11/2021', 'DD/MM/YYYY'));
INSERT INTO PremiosJugadores (idJugador, idPremio, fechaDeRecibimiento) VALUES ('71', '6', TO_DATE('08/12/2021', 'DD/MM/YYYY'));


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

INSERT INTO Anotaciones (idAnotación, idJugador, idTipoDeAnotación, idPartido, minuto, intento) VALUES  (1, '45', '1', '1', '0:08:15',FALSE);
INSERT INTO Anotaciones (idAnotación, idJugador, idTipoDeAnotación, idPartido, minuto, intento) VALUES  (2, '85', '3', '2', '0:19:13',FALSE);
INSERT INTO Anotaciones (idAnotación, idJugador, idTipoDeAnotación, idPartido, minuto, intento) VALUES  (3, '82', '2', '3', '0:22:41',FALSE);
INSERT INTO Anotaciones (idAnotación, idJugador, idTipoDeAnotación, idPartido, minuto, intento) VALUES  (4, '50', '1', '4', '0:13:25',FALSE);
INSERT INTO Anotaciones (idAnotación, idJugador, idTipoDeAnotación, idPartido, minuto, intento) VALUES  (5, '76', '3', '5', '0:27:53',FALSE);
INSERT INTO Anotaciones (idAnotación, idJugador, idTipoDeAnotación, idPartido, minuto, intento) VALUES  (6, '48', '2', '6', '0:13:37',FALSE);
INSERT INTO Anotaciones (idAnotación, idJugador, idTipoDeAnotación, idPartido, minuto, intento) VALUES  (7, '67', '2', '7', '0:46:13',FALSE);
INSERT INTO Anotaciones (idAnotación, idJugador, idTipoDeAnotación, idPartido, minuto, intento) VALUES  (8, '42', '1', '8', '0:11:19',FALSE);
INSERT INTO Anotaciones (idAnotación, idJugador, idTipoDeAnotación, idPartido, minuto, intento) VALUES  (9, '77', '3', '9', '0:20:25',TRUE);
INSERT INTO Anotaciones (idAnotación, idJugador, idTipoDeAnotación, idPartido, minuto, intento) VALUES  (10, '56', '2', '10', '0:25:35',FALSE);
INSERT INTO Anotaciones (idAnotación, idJugador, idTipoDeAnotación, idPartido, minuto, intento) VALUES  (11, '62', '1', '11', '0:16:16',FALSE);
INSERT INTO Anotaciones (idAnotación, idJugador, idTipoDeAnotación, idPartido, minuto, intento) VALUES  (12, '28', '3', '12', '0:04:46',FALSE);
INSERT INTO Anotaciones (idAnotación, idJugador, idTipoDeAnotación, idPartido, minuto, intento) VALUES  (13, '54', '3', '13', '0:56:01',FALSE);
INSERT INTO Anotaciones (idAnotación, idJugador, idTipoDeAnotación, idPartido, minuto, intento) VALUES  (14, '74', '2', '14', '0:47:19',FALSE);
INSERT INTO Anotaciones (idAnotación, idJugador, idTipoDeAnotación, idPartido, minuto, intento) VALUES  (15, '49', '1', '15', '0:29:00',FALSE);
INSERT INTO Anotaciones (idAnotación, idJugador, idTipoDeAnotación, idPartido, minuto, intento) VALUES  (16, '73', '2', '16', '0:39:24',FALSE);
INSERT INTO Anotaciones (idAnotación, idJugador, idTipoDeAnotación, idPartido, minuto, intento) VALUES  (17, '78', '3', '17', '0:39:20',FALSE);
INSERT INTO Anotaciones (idAnotación, idJugador, idTipoDeAnotación, idPartido, minuto, intento) VALUES  (18, '29', '1', '18', '0:09:41',TRUE);
INSERT INTO Anotaciones (idAnotación, idJugador, idTipoDeAnotación, idPartido, minuto, intento) VALUES  (19, '66', '3', '19', '0:17:44',FALSE);
INSERT INTO Anotaciones (idAnotación, idJugador, idTipoDeAnotación, idPartido, minuto, intento) VALUES  (20, '41', '2', '20', '0:00:28',FALSE);
INSERT INTO Anotaciones (idAnotación, idJugador, idTipoDeAnotación, idPartido, minuto, intento) VALUES  (21, '33', '1', '21', '0:38:24',FALSE);
INSERT INTO Anotaciones (idAnotación, idJugador, idTipoDeAnotación, idPartido, minuto, intento) VALUES  (22, '80', '1', '22', '0:44:45',TRUE);
INSERT INTO Anotaciones (idAnotación, idJugador, idTipoDeAnotación, idPartido, minuto, intento) VALUES  (23, '59', '3', '23', '0:31:24',FALSE);
INSERT INTO Anotaciones (idAnotación, idJugador, idTipoDeAnotación, idPartido, minuto, intento) VALUES  (24, '68', '2', '24', '0:45:48',TRUE);
INSERT INTO Anotaciones (idAnotación, idJugador, idTipoDeAnotación, idPartido, minuto, intento) VALUES  (25, '55', '3', '25', '0:54:15',FALSE);
INSERT INTO Anotaciones (idAnotación, idJugador, idTipoDeAnotación, idPartido, minuto, intento) VALUES  (26, '31', '1', '26', '0:14:06',FALSE);
INSERT INTO Anotaciones (idAnotación, idJugador, idTipoDeAnotación, idPartido, minuto, intento) VALUES  (27, '84', '2', '27', '0:47:00',FALSE);
INSERT INTO Anotaciones (idAnotación, idJugador, idTipoDeAnotación, idPartido, minuto, intento) VALUES  (28, '69', '1', '28', '0:00:32',TRUE);
INSERT INTO Anotaciones (idAnotación, idJugador, idTipoDeAnotación, idPartido, minuto, intento) VALUES  (29, '38', '3', '29', '0:15:12',FALSE);
INSERT INTO Anotaciones (idAnotación, idJugador, idTipoDeAnotación, idPartido, minuto, intento) VALUES  (30, '37', '2', '30', '0:57:51',FALSE);
INSERT INTO Anotaciones (idAnotación, idJugador, idTipoDeAnotación, idPartido, minuto, intento) VALUES  (31, '75', '2', '31', '0:17:54',FALSE);
INSERT INTO Anotaciones (idAnotación, idJugador, idTipoDeAnotación, idPartido, minuto, intento) VALUES  (32, '57', '3', '32', '0:34:19',FALSE);
INSERT INTO Anotaciones (idAnotación, idJugador, idTipoDeAnotación, idPartido, minuto, intento) VALUES  (33, '47', '1', '33', '0:21:12',TRUE);
INSERT INTO Anotaciones (idAnotación, idJugador, idTipoDeAnotación, idPartido, minuto, intento) VALUES  (34, '71', '1', '34', '0:05:49',FALSE);
INSERT INTO Anotaciones (idAnotación, idJugador, idTipoDeAnotación, idPartido, minuto, intento) VALUES  (35, '53', '3', '35', '0:11:44',TRUE);
INSERT INTO Anotaciones (idAnotación, idJugador, idTipoDeAnotación, idPartido, minuto, intento) VALUES  (36, '39', '2', '36', '0:47:34',FALSE);
INSERT INTO Anotaciones (idAnotación, idJugador, idTipoDeAnotación, idPartido, minuto, intento) VALUES  (37, '43', '1', '37', '0:46:07',FALSE);
INSERT INTO Anotaciones (idAnotación, idJugador, idTipoDeAnotación, idPartido, minuto, intento) VALUES  (38, '32', '2', '38', '0:03:45',FALSE);
INSERT INTO Anotaciones (idAnotación, idJugador, idTipoDeAnotación, idPartido, minuto, intento) VALUES  (39, '27', '3', '39', '0:38:04',FALSE);
INSERT INTO Anotaciones (idAnotación, idJugador, idTipoDeAnotación, idPartido, minuto, intento) VALUES  (40, '52', '1', '40', '0:16:17',FALSE);
INSERT INTO Anotaciones (idAnotación, idJugador, idTipoDeAnotación, idPartido, minuto, intento) VALUES  (41, '86', '3', '41', '0:28:09',FALSE);
INSERT INTO Anotaciones (idAnotación, idJugador, idTipoDeAnotación, idPartido, minuto, intento) VALUES  (42, '58', '2', '42', '0:37:37',TRUE);
INSERT INTO Anotaciones (idAnotación, idJugador, idTipoDeAnotación, idPartido, minuto, intento) VALUES  (43, '34', '1', '43', '0:24:30',FALSE);
INSERT INTO Anotaciones (idAnotación, idJugador, idTipoDeAnotación, idPartido, minuto, intento) VALUES  (44, '60', '3', '44', '0:24:56',FALSE);
INSERT INTO Anotaciones (idAnotación, idJugador, idTipoDeAnotación, idPartido, minuto, intento) VALUES  (45, '81', '2', '45', '0:49:35',FALSE);
INSERT INTO Anotaciones (idAnotación, idJugador, idTipoDeAnotación, idPartido, minuto, intento) VALUES  (46, '46', '3', '46', '0:58:22',FALSE);
INSERT INTO Anotaciones (idAnotación, idJugador, idTipoDeAnotación, idPartido, minuto, intento) VALUES  (47, '63', '1', '47', '0:07:28',FALSE);
INSERT INTO Anotaciones (idAnotación, idJugador, idTipoDeAnotación, idPartido, minuto, intento) VALUES  (48, '64', '2', '48', '0:14:07',FALSE);
INSERT INTO Anotaciones (idAnotación, idJugador, idTipoDeAnotación, idPartido, minuto, intento) VALUES  (49, '36', '2', '49', '0:03:18',FALSE);
INSERT INTO Anotaciones (idAnotación, idJugador, idTipoDeAnotación, idPartido, minuto, intento) VALUES  (50, '72', '1', '50', '0:51:29',FALSE);
INSERT INTO Anotaciones (idAnotación, idJugador, idTipoDeAnotación, idPartido, minuto, intento) VALUES  (51, '44', '3', '51', '0:30:51',TRUE);
INSERT INTO Anotaciones (idAnotación, idJugador, idTipoDeAnotación, idPartido, minuto, intento) VALUES  (52, '70', '3', '52', '0:21:28',FALSE);
INSERT INTO Anotaciones (idAnotación, idJugador, idTipoDeAnotación, idPartido, minuto, intento) VALUES  (53, '79', '2', '53', '0:02:27',FALSE);
INSERT INTO Anotaciones (idAnotación, idJugador, idTipoDeAnotación, idPartido, minuto, intento) VALUES  (54, '83', '1', '54', '0:01:04',FALSE);
INSERT INTO Anotaciones (idAnotación, idJugador, idTipoDeAnotación, idPartido, minuto, intento) VALUES  (55, '51', '1', '55', '0:58:12',FALSE);
INSERT INTO Anotaciones (idAnotación, idJugador, idTipoDeAnotación, idPartido, minuto, intento) VALUES  (56, '35', '2', '56', '0:51:12',FALSE);
INSERT INTO Anotaciones (idAnotación, idJugador, idTipoDeAnotación, idPartido, minuto, intento) VALUES  (57, '40', '3', '57', '0:16:24',FALSE);
INSERT INTO Anotaciones (idAnotación, idJugador, idTipoDeAnotación, idPartido, minuto, intento) VALUES  (58, '65', '3', '58', '0:40:43',FALSE);
INSERT INTO Anotaciones (idAnotación, idJugador, idTipoDeAnotación, idPartido, minuto, intento) VALUES  (59, '30', '1', '59', '0:40:23',FALSE);
INSERT INTO Anotaciones (idAnotación, idJugador, idTipoDeAnotación, idPartido, minuto, intento) VALUES  (60, '61', '2', '60', '0:47:09',FALSE);
INSERT INTO Anotaciones (idAnotación, idJugador, idTipoDeAnotación, idPartido, minuto, intento) VALUES  (61, '77', '1', '1', '0:31:44',FALSE);
INSERT INTO Anotaciones (idAnotación, idJugador, idTipoDeAnotación, idPartido, minuto, intento) VALUES  (62, '35', '3', '2', '0:47:20',FALSE);
INSERT INTO Anotaciones (idAnotación, idJugador, idTipoDeAnotación, idPartido, minuto, intento) VALUES  (63, '75', '2', '3', '0:27:59',FALSE);
INSERT INTO Anotaciones (idAnotación, idJugador, idTipoDeAnotación, idPartido, minuto, intento) VALUES  (64, '28', '2', '4', '0:38:17',FALSE);
INSERT INTO Anotaciones (idAnotación, idJugador, idTipoDeAnotación, idPartido, minuto, intento) VALUES  (65, '72', '1', '5', '0:57:56',TRUE);
INSERT INTO Anotaciones (idAnotación, idJugador, idTipoDeAnotación, idPartido, minuto, intento) VALUES  (66, '71', '3', '6', '0:58:24',TRUE);
INSERT INTO Anotaciones (idAnotación, idJugador, idTipoDeAnotación, idPartido, minuto, intento) VALUES  (67, '49', '2', '7', '0:17:37',FALSE);
INSERT INTO Anotaciones (idAnotación, idJugador, idTipoDeAnotación, idPartido, minuto, intento) VALUES  (68, '69', '1', '8', '0:41:44',FALSE);
INSERT INTO Anotaciones (idAnotación, idJugador, idTipoDeAnotación, idPartido, minuto, intento) VALUES  (69, '51', '3', '9', '0:46:40',FALSE);
INSERT INTO Anotaciones (idAnotación, idJugador, idTipoDeAnotación, idPartido, minuto, intento) VALUES  (70, '80', '2', '10', '0:52:23',FALSE);
INSERT INTO Anotaciones (idAnotación, idJugador, idTipoDeAnotación, idPartido, minuto, intento) VALUES  (71, '30', '3', '11', '0:36:41',FALSE);
INSERT INTO Anotaciones (idAnotación, idJugador, idTipoDeAnotación, idPartido, minuto, intento) VALUES  (72, '81', '1', '12', '0:24:32',TRUE);
INSERT INTO Anotaciones (idAnotación, idJugador, idTipoDeAnotación, idPartido, minuto, intento) VALUES  (73, '74', '1', '13', '0:25:28',FALSE);
INSERT INTO Anotaciones (idAnotación, idJugador, idTipoDeAnotación, idPartido, minuto, intento) VALUES  (74, '37', '3', '14', '0:48:55',FALSE);
INSERT INTO Anotaciones (idAnotación, idJugador, idTipoDeAnotación, idPartido, minuto, intento) VALUES  (75, '42', '2', '15', '0:01:27',FALSE);
INSERT INTO Anotaciones (idAnotación, idJugador, idTipoDeAnotación, idPartido, minuto, intento) VALUES  (76, '31', '3', '16', '0:57:26',FALSE);
INSERT INTO Anotaciones (idAnotación, idJugador, idTipoDeAnotación, idPartido, minuto, intento) VALUES  (77, '48', '2', '17', '0:00:43',FALSE);
INSERT INTO Anotaciones (idAnotación, idJugador, idTipoDeAnotación, idPartido, minuto, intento) VALUES  (78, '59', '1', '18', '0:36:06',FALSE);
INSERT INTO Anotaciones (idAnotación, idJugador, idTipoDeAnotación, idPartido, minuto, intento) VALUES  (79, '84', '3', '19', '0:44:34',FALSE);
INSERT INTO Anotaciones (idAnotación, idJugador, idTipoDeAnotación, idPartido, minuto, intento) VALUES  (80, '66', '2', '20', '0:40:58',FALSE);
INSERT INTO Anotaciones (idAnotación, idJugador, idTipoDeAnotación, idPartido, minuto, intento) VALUES  (81, '70', '1', '21', '0:45:20',FALSE);
INSERT INTO Anotaciones (idAnotación, idJugador, idTipoDeAnotación, idPartido, minuto, intento) VALUES  (82, '79', '1', '22', '0:06:58',FALSE);
INSERT INTO Anotaciones (idAnotación, idJugador, idTipoDeAnotación, idPartido, minuto, intento) VALUES  (83, '47', '2', '23', '0:25:53',FALSE);
INSERT INTO Anotaciones (idAnotación, idJugador, idTipoDeAnotación, idPartido, minuto, intento) VALUES  (84, '43', '3', '24', '0:22:37',FALSE);
INSERT INTO Anotaciones (idAnotación, idJugador, idTipoDeAnotación, idPartido, minuto, intento) VALUES  (85, '86', '1', '25', '0:27:20',FALSE);
INSERT INTO Anotaciones (idAnotación, idJugador, idTipoDeAnotación, idPartido, minuto, intento) VALUES  (86, '57', '2', '26', '0:58:56',FALSE);
INSERT INTO Anotaciones (idAnotación, idJugador, idTipoDeAnotación, idPartido, minuto, intento) VALUES  (87, '45', '3', '27', '0:26:10',FALSE);
INSERT INTO Anotaciones (idAnotación, idJugador, idTipoDeAnotación, idPartido, minuto, intento) VALUES  (88, '65', '3', '28', '0:59:40',FALSE);
INSERT INTO Anotaciones (idAnotación, idJugador, idTipoDeAnotación, idPartido, minuto, intento) VALUES  (89, '44', '1', '29', '0:36:06',FALSE);
INSERT INTO Anotaciones (idAnotación, idJugador, idTipoDeAnotación, idPartido, minuto, intento) VALUES  (90, '41', '2', '30', '0:07:55',FALSE);
INSERT INTO Anotaciones (idAnotación, idJugador, idTipoDeAnotación, idPartido, minuto, intento) VALUES  (91, '55', '2', '31', '0:27:32',TRUE);
INSERT INTO Anotaciones (idAnotación, idJugador, idTipoDeAnotación, idPartido, minuto, intento) VALUES  (92, '33', '3', '32', '0:04:53',FALSE);
INSERT INTO Anotaciones (idAnotación, idJugador, idTipoDeAnotación, idPartido, minuto, intento) VALUES  (93, '63', '1', '33', '0:00:46',FALSE);
INSERT INTO Anotaciones (idAnotación, idJugador, idTipoDeAnotación, idPartido, minuto, intento) VALUES  (94, '78', '2', '34', '0:57:45',FALSE);
INSERT INTO Anotaciones (idAnotación, idJugador, idTipoDeAnotación, idPartido, minuto, intento) VALUES  (95, '62', '1', '35', '0:02:30',FALSE);
INSERT INTO Anotaciones (idAnotación, idJugador, idTipoDeAnotación, idPartido, minuto, intento) VALUES  (96, '53', '3', '36', '0:24:54',FALSE);
INSERT INTO Anotaciones (idAnotación, idJugador, idTipoDeAnotación, idPartido, minuto, intento) VALUES  (97, '39', '2', '37', '0:33:57',FALSE);
INSERT INTO Anotaciones (idAnotación, idJugador, idTipoDeAnotación, idPartido, minuto, intento) VALUES  (98, '61', '3', '38', '0:37:30',FALSE);
INSERT INTO Anotaciones (idAnotación, idJugador, idTipoDeAnotación, idPartido, minuto, intento) VALUES  (99, '54', '1', '39', '0:19:33',FALSE);
INSERT INTO Anotaciones (idAnotación, idJugador, idTipoDeAnotación, idPartido, minuto, intento) VALUES  (100, '32', '1', '40', '0:56:07',FALSE);
INSERT INTO Anotaciones (idAnotación, idJugador, idTipoDeAnotación, idPartido, minuto, intento) VALUES  (101, '73', '3', '41', '0:36:57',FALSE);
INSERT INTO Anotaciones (idAnotación, idJugador, idTipoDeAnotación, idPartido, minuto, intento) VALUES  (102, '38', '2', '42', '0:44:19',FALSE);
INSERT INTO Anotaciones (idAnotación, idJugador, idTipoDeAnotación, idPartido, minuto, intento) VALUES  (103, '83', '1', '43', '0:06:36',FALSE);
INSERT INTO Anotaciones (idAnotación, idJugador, idTipoDeAnotación, idPartido, minuto, intento) VALUES  (104, '85', '2', '44', '0:46:25',TRUE);
INSERT INTO Anotaciones (idAnotación, idJugador, idTipoDeAnotación, idPartido, minuto, intento) VALUES  (105, '76', '3', '45', '0:02:13',FALSE);
INSERT INTO Anotaciones (idAnotación, idJugador, idTipoDeAnotación, idPartido, minuto, intento) VALUES  (106, '56', '2', '46', '0:39:06',FALSE);
INSERT INTO Anotaciones (idAnotación, idJugador, idTipoDeAnotación, idPartido, minuto, intento) VALUES  (107, '67', '3', '47', '0:15:53',FALSE);
INSERT INTO Anotaciones (idAnotación, idJugador, idTipoDeAnotación, idPartido, minuto, intento) VALUES  (108, '60', '1', '48', '0:57:20',FALSE);
INSERT INTO Anotaciones (idAnotación, idJugador, idTipoDeAnotación, idPartido, minuto, intento) VALUES  (109, '64', '1', '49', '0:29:39',FALSE);
INSERT INTO Anotaciones (idAnotación, idJugador, idTipoDeAnotación, idPartido, minuto, intento) VALUES  (110, '82', '2', '50', '0:31:43',FALSE);
INSERT INTO Anotaciones (idAnotación, idJugador, idTipoDeAnotación, idPartido, minuto, intento) VALUES  (111, '34', '3', '51', '0:22:32',FALSE);
INSERT INTO Anotaciones (idAnotación, idJugador, idTipoDeAnotación, idPartido, minuto, intento) VALUES  (112, '58', '2', '52', '0:55:25',FALSE);
INSERT INTO Anotaciones (idAnotación, idJugador, idTipoDeAnotación, idPartido, minuto, intento) VALUES  (113, '29', '3', '53', '0:21:23',FALSE);
INSERT INTO Anotaciones (idAnotación, idJugador, idTipoDeAnotación, idPartido, minuto, intento) VALUES  (114, '36', '1', '54', '0:21:31',FALSE);
INSERT INTO Anotaciones (idAnotación, idJugador, idTipoDeAnotación, idPartido, minuto, intento) VALUES  (115, '52', '2', '55', '0:43:07',FALSE);
INSERT INTO Anotaciones (idAnotación, idJugador, idTipoDeAnotación, idPartido, minuto, intento) VALUES  (116, '46', '1', '56', '0:54:15',TRUE);
INSERT INTO Anotaciones (idAnotación, idJugador, idTipoDeAnotación, idPartido, minuto, intento) VALUES  (117, '68', '3', '57', '0:08:49',FALSE);
INSERT INTO Anotaciones (idAnotación, idJugador, idTipoDeAnotación, idPartido, minuto, intento) VALUES  (118, '50', '1', '58', '0:00:13',FALSE);
INSERT INTO Anotaciones (idAnotación, idJugador, idTipoDeAnotación, idPartido, minuto, intento) VALUES  (119, '27', '3', '59', '0:18:44',FALSE);
INSERT INTO Anotaciones (idAnotación, idJugador, idTipoDeAnotación, idPartido, minuto, intento) VALUES  (120, '40', '2', '60', '0:45:04',FALSE);
INSERT INTO Anotaciones (idAnotación, idJugador, idTipoDeAnotación, idPartido, minuto, intento) VALUES  (121, '53', '2', '1', '0:56:50',FALSE);
INSERT INTO Anotaciones (idAnotación, idJugador, idTipoDeAnotación, idPartido, minuto, intento) VALUES  (122, '28', '1', '2', '0:31:08',FALSE);
INSERT INTO Anotaciones (idAnotación, idJugador, idTipoDeAnotación, idPartido, minuto, intento) VALUES  (123, '58', '3', '3', '0:31:49',FALSE);
INSERT INTO Anotaciones (idAnotación, idJugador, idTipoDeAnotación, idPartido, minuto, intento) VALUES  (124, '60', '1', '4', '0:55:22',FALSE);
INSERT INTO Anotaciones (idAnotación, idJugador, idTipoDeAnotación, idPartido, minuto, intento) VALUES  (125, '83', '2', '5', '0:45:12',FALSE);
INSERT INTO Anotaciones (idAnotación, idJugador, idTipoDeAnotación, idPartido, minuto, intento) VALUES  (126, '52', '3', '6', '0:33:14',FALSE);
INSERT INTO Anotaciones (idAnotación, idJugador, idTipoDeAnotación, idPartido, minuto, intento) VALUES  (127, '59', '2', '7', '0:10:29',FALSE);
INSERT INTO Anotaciones (idAnotación, idJugador, idTipoDeAnotación, idPartido, minuto, intento) VALUES  (128, '86', '3', '8', '0:08:46',FALSE);
INSERT INTO Anotaciones (idAnotación, idJugador, idTipoDeAnotación, idPartido, minuto, intento) VALUES  (129, '34', '1', '9', '0:18:12',FALSE);
INSERT INTO Anotaciones (idAnotación, idJugador, idTipoDeAnotación, idPartido, minuto, intento) VALUES  (130, '40', '1', '10', '0:52:57',FALSE);
INSERT INTO Anotaciones (idAnotación, idJugador, idTipoDeAnotación, idPartido, minuto, intento) VALUES  (131, '85', '2', '11', '0:32:33',FALSE);
INSERT INTO Anotaciones (idAnotación, idJugador, idTipoDeAnotación, idPartido, minuto, intento) VALUES  (132, '54', '3', '12', '0:01:41',FALSE);
INSERT INTO Anotaciones (idAnotación, idJugador, idTipoDeAnotación, idPartido, minuto, intento) VALUES  (133, '44', '1', '13', '0:26:43',FALSE);
INSERT INTO Anotaciones (idAnotación, idJugador, idTipoDeAnotación, idPartido, minuto, intento) VALUES  (134, '49', '2', '14', '0:37:22',FALSE);
INSERT INTO Anotaciones (idAnotación, idJugador, idTipoDeAnotación, idPartido, minuto, intento) VALUES  (135, '81', '3', '15', '0:19:43',FALSE);
INSERT INTO Anotaciones (idAnotación, idJugador, idTipoDeAnotación, idPartido, minuto, intento) VALUES  (136, '36', '2', '16', '0:39:15',FALSE);
INSERT INTO Anotaciones (idAnotación, idJugador, idTipoDeAnotación, idPartido, minuto, intento) VALUES  (137, '33', '3', '17', '0:35:07',TRUE);
INSERT INTO Anotaciones (idAnotación, idJugador, idTipoDeAnotación, idPartido, minuto, intento) VALUES  (138, '70', '1', '18', '0:47:50',FALSE);
INSERT INTO Anotaciones (idAnotación, idJugador, idTipoDeAnotación, idPartido, minuto, intento) VALUES  (139, '56', '2', '19', '0:43:29',FALSE);
INSERT INTO Anotaciones (idAnotación, idJugador, idTipoDeAnotación, idPartido, minuto, intento) VALUES  (140, '55', '3', '20', '0:00:19',FALSE);
INSERT INTO Anotaciones (idAnotación, idJugador, idTipoDeAnotación, idPartido, minuto, intento) VALUES  (141, '51', '1', '21', '0:06:06',FALSE);
INSERT INTO Anotaciones (idAnotación, idJugador, idTipoDeAnotación, idPartido, minuto, intento) VALUES  (142, '64', '2', '22', '0:47:09',FALSE);
INSERT INTO Anotaciones (idAnotación, idJugador, idTipoDeAnotación, idPartido, minuto, intento) VALUES  (143, '79', '3', '23', '0:22:51',FALSE);
INSERT INTO Anotaciones (idAnotación, idJugador, idTipoDeAnotación, idPartido, minuto, intento) VALUES  (144, '46', '1', '24', '0:52:51',FALSE);
INSERT INTO Anotaciones (idAnotación, idJugador, idTipoDeAnotación, idPartido, minuto, intento) VALUES  (145, '63', '3', '25', '0:49:40',FALSE);
INSERT INTO Anotaciones (idAnotación, idJugador, idTipoDeAnotación, idPartido, minuto, intento) VALUES  (146, '69', '2', '26', '0:09:20',FALSE);
INSERT INTO Anotaciones (idAnotación, idJugador, idTipoDeAnotación, idPartido, minuto, intento) VALUES  (147, '75', '1', '27', '0:27:31',FALSE);
INSERT INTO Anotaciones (idAnotación, idJugador, idTipoDeAnotación, idPartido, minuto, intento) VALUES  (148, '71', '3', '28', '0:07:00',FALSE);
INSERT INTO Anotaciones (idAnotación, idJugador, idTipoDeAnotación, idPartido, minuto, intento) VALUES  (149, '30', '1', '29', '0:12:40',FALSE);
INSERT INTO Anotaciones (idAnotación, idJugador, idTipoDeAnotación, idPartido, minuto, intento) VALUES  (150, '48', '2', '30', '0:10:33',FALSE);
INSERT INTO Anotaciones (idAnotación, idJugador, idTipoDeAnotación, idPartido, minuto, intento) VALUES  (151, '82', '1', '31', '0:04:54',FALSE);
INSERT INTO Anotaciones (idAnotación, idJugador, idTipoDeAnotación, idPartido, minuto, intento) VALUES  (152, '43', '2', '32', '0:50:53',FALSE);
INSERT INTO Anotaciones (idAnotación, idJugador, idTipoDeAnotación, idPartido, minuto, intento) VALUES  (153, '47', '3', '33', '0:28:05',FALSE);
INSERT INTO Anotaciones (idAnotación, idJugador, idTipoDeAnotación, idPartido, minuto, intento) VALUES  (154, '42', '1', '34', '0:48:16',FALSE);
INSERT INTO Anotaciones (idAnotación, idJugador, idTipoDeAnotación, idPartido, minuto, intento) VALUES  (155, '32', '2', '35', '0:40:21',TRUE);
INSERT INTO Anotaciones (idAnotación, idJugador, idTipoDeAnotación, idPartido, minuto, intento) VALUES  (156, '45', '3', '36', '0:41:48',FALSE);
INSERT INTO Anotaciones (idAnotación, idJugador, idTipoDeAnotación, idPartido, minuto, intento) VALUES  (157, '65', '2', '37', '0:32:39',FALSE);
INSERT INTO Anotaciones (idAnotación, idJugador, idTipoDeAnotación, idPartido, minuto, intento) VALUES  (158, '62', '1', '38', '0:31:07',FALSE);
INSERT INTO Anotaciones (idAnotación, idJugador, idTipoDeAnotación, idPartido, minuto, intento) VALUES  (159, '57', '3', '39', '0:27:47',FALSE);
INSERT INTO Anotaciones (idAnotación, idJugador, idTipoDeAnotación, idPartido, minuto, intento) VALUES  (160, '67', '3', '40', '0:16:14',FALSE);
INSERT INTO Anotaciones (idAnotación, idJugador, idTipoDeAnotación, idPartido, minuto, intento) VALUES  (161, '37', '2', '41', '0:11:10',FALSE);
INSERT INTO Anotaciones (idAnotación, idJugador, idTipoDeAnotación, idPartido, minuto, intento) VALUES  (162, '76', '1', '42', '0:42:41',FALSE);
INSERT INTO Anotaciones (idAnotación, idJugador, idTipoDeAnotación, idPartido, minuto, intento) VALUES  (163, '78', '3', '43', '0:23:10',FALSE);
INSERT INTO Anotaciones (idAnotación, idJugador, idTipoDeAnotación, idPartido, minuto, intento) VALUES  (164, '38', '1', '44', '0:20:58',FALSE);
INSERT INTO Anotaciones (idAnotación, idJugador, idTipoDeAnotación, idPartido, minuto, intento) VALUES  (165, '72', '2', '45', '0:30:13',FALSE);
INSERT INTO Anotaciones (idAnotación, idJugador, idTipoDeAnotación, idPartido, minuto, intento) VALUES  (166, '29', '3', '46', '0:39:15',FALSE);
INSERT INTO Anotaciones (idAnotación, idJugador, idTipoDeAnotación, idPartido, minuto, intento) VALUES  (167, '41', '2', '47', '0:38:03',FALSE);
INSERT INTO Anotaciones (idAnotación, idJugador, idTipoDeAnotación, idPartido, minuto, intento) VALUES  (168, '74', '1', '48', '0:15:16',FALSE);
INSERT INTO Anotaciones (idAnotación, idJugador, idTipoDeAnotación, idPartido, minuto, intento) VALUES  (169, '61', '2', '49', '0:00:30',FALSE);
INSERT INTO Anotaciones (idAnotación, idJugador, idTipoDeAnotación, idPartido, minuto, intento) VALUES  (170, '77', '3', '50', '0:54:30',FALSE);
INSERT INTO Anotaciones (idAnotación, idJugador, idTipoDeAnotación, idPartido, minuto, intento) VALUES  (171, '39', '1', '51', '0:00:42',FALSE);
INSERT INTO Anotaciones (idAnotación, idJugador, idTipoDeAnotación, idPartido, minuto, intento) VALUES  (172, '35', '3', '52', '0:10:27',FALSE);
INSERT INTO Anotaciones (idAnotación, idJugador, idTipoDeAnotación, idPartido, minuto, intento) VALUES  (173, '73', '1', '53', '0:28:33',FALSE);
INSERT INTO Anotaciones (idAnotación, idJugador, idTipoDeAnotación, idPartido, minuto, intento) VALUES  (174, '50', '2', '54', '0:31:49',FALSE);
INSERT INTO Anotaciones (idAnotación, idJugador, idTipoDeAnotación, idPartido, minuto, intento) VALUES  (175, '31', '3', '55', '0:44:13',FALSE);
INSERT INTO Anotaciones (idAnotación, idJugador, idTipoDeAnotación, idPartido, minuto, intento) VALUES  (176, '27', '2', '56', '0:05:01',FALSE);
INSERT INTO Anotaciones (idAnotación, idJugador, idTipoDeAnotación, idPartido, minuto, intento) VALUES  (177, '80', '1', '57', '0:49:58',TRUE);
INSERT INTO Anotaciones (idAnotación, idJugador, idTipoDeAnotación, idPartido, minuto, intento) VALUES  (178, '66', '3', '58', '0:54:53',FALSE);
INSERT INTO Anotaciones (idAnotación, idJugador, idTipoDeAnotación, idPartido, minuto, intento) VALUES  (179, '84', '1', '59', '0:30:57',FALSE);
INSERT INTO Anotaciones (idAnotación, idJugador, idTipoDeAnotación, idPartido, minuto, intento) VALUES  (180, '68', '2', '60', '0:17:04',FALSE);

CREATE TABLE Entrenadores (
	idPersona INTEGER NOT NULL PRIMARY KEY,
	esEntrenadorPrincipal BOOLEAN NOT NULL,
	idEquipo INTEGER NOT NULL,
	FOREIGN KEY (idPersona) REFERENCES Personas(idPersona),
	FOREIGN KEY (idEquipo) REFERENCES Equipos(idEquipo)
);

INSERT INTO Entrenadores (idPersona, esEntrenadorPrincipal, idEquipo) VALUES  (103,TRUE, '1');
INSERT INTO Entrenadores (idPersona, esEntrenadorPrincipal, idEquipo) VALUES  (104,FALSE, '2');
INSERT INTO Entrenadores (idPersona, esEntrenadorPrincipal, idEquipo) VALUES  (105,FALSE, '3');
INSERT INTO Entrenadores (idPersona, esEntrenadorPrincipal, idEquipo) VALUES  (106,FALSE, '4');
INSERT INTO Entrenadores (idPersona, esEntrenadorPrincipal, idEquipo) VALUES  (107,FALSE, '5');
INSERT INTO Entrenadores (idPersona, esEntrenadorPrincipal, idEquipo) VALUES  (108,TRUE, '6');
INSERT INTO Entrenadores (idPersona, esEntrenadorPrincipal, idEquipo) VALUES  (109,TRUE, '7');
INSERT INTO Entrenadores (idPersona, esEntrenadorPrincipal, idEquipo) VALUES  (110,TRUE, '8');
INSERT INTO Entrenadores (idPersona, esEntrenadorPrincipal, idEquipo) VALUES  (111,TRUE, '9');
INSERT INTO Entrenadores (idPersona, esEntrenadorPrincipal, idEquipo) VALUES  (112,FALSE, '10');
INSERT INTO Entrenadores (idPersona, esEntrenadorPrincipal, idEquipo) VALUES  (113,FALSE, '11');
INSERT INTO Entrenadores (idPersona, esEntrenadorPrincipal, idEquipo) VALUES  (114,TRUE, '12');



CREATE TABLE Asistentes (
	idAsistente INTEGER NOT NULL PRIMARY KEY,
	idEntrenador INTEGER NOT NULL,

	FOREIGN KEY (idAsistente) REFERENCES Personas(idPersona),
	FOREIGN KEY (idEntrenador) REFERENCES Entrenadores(idPersona)
);

INSERT INTO Asistentes (idAsistente, idEntrenador) VALUES  (115, '103');
INSERT INTO Asistentes (idAsistente, idEntrenador) VALUES  (116, '104');
INSERT INTO Asistentes (idAsistente, idEntrenador) VALUES  (117, '105');
INSERT INTO Asistentes (idAsistente, idEntrenador) VALUES  (118, '106');
INSERT INTO Asistentes (idAsistente, idEntrenador) VALUES  (119, '107');
INSERT INTO Asistentes (idAsistente, idEntrenador) VALUES  (120, '108');
INSERT INTO Asistentes (idAsistente, idEntrenador) VALUES  (121, '109');
INSERT INTO Asistentes (idAsistente, idEntrenador) VALUES  (122, '110');
INSERT INTO Asistentes (idAsistente, idEntrenador) VALUES  (123, '111');
INSERT INTO Asistentes (idAsistente, idEntrenador) VALUES  (124, '112');
INSERT INTO Asistentes (idAsistente, idEntrenador) VALUES  (125, '113');
INSERT INTO Asistentes (idAsistente, idEntrenador) VALUES  (126, '114');
INSERT INTO Asistentes (idAsistente, idEntrenador) VALUES  (127, '103');
INSERT INTO Asistentes (idAsistente, idEntrenador) VALUES  (128, '104');
INSERT INTO Asistentes (idAsistente, idEntrenador) VALUES  (129, '105');
INSERT INTO Asistentes (idAsistente, idEntrenador) VALUES  (130, '106');
INSERT INTO Asistentes (idAsistente, idEntrenador) VALUES  (131, '107');
INSERT INTO Asistentes (idAsistente, idEntrenador) VALUES  (132, '108');
INSERT INTO Asistentes (idAsistente, idEntrenador) VALUES  (133, '109');
INSERT INTO Asistentes (idAsistente, idEntrenador) VALUES  (134, '110');

CREATE TABLE Propietarios (
	idPropietario INTEGER NOT NULL PRIMARY KEY,
	idEquipo INTEGER NOT NULL,
	FOREIGN KEY (idPropietario) REFERENCES Personas(idPersona),
	FOREIGN KEY (idEquipo) REFERENCES Equipos(idEquipo)
);

INSERT INTO Propietarios (idPropietario, idEquipo) VALUES  (135, '11');
INSERT INTO Propietarios (idPropietario, idEquipo) VALUES  (136, '9');
INSERT INTO Propietarios (idPropietario, idEquipo) VALUES  (137, '8');
INSERT INTO Propietarios (idPropietario, idEquipo) VALUES  (138, '12');
INSERT INTO Propietarios (idPropietario, idEquipo) VALUES  (139, '5');
INSERT INTO Propietarios (idPropietario, idEquipo) VALUES  (140, '2');
INSERT INTO Propietarios (idPropietario, idEquipo) VALUES  (141, '1');
INSERT INTO Propietarios (idPropietario, idEquipo) VALUES  (142, '7');
INSERT INTO Propietarios (idPropietario, idEquipo) VALUES  (143, '4');
INSERT INTO Propietarios (idPropietario, idEquipo) VALUES  (144, '3');
INSERT INTO Propietarios (idPropietario, idEquipo) VALUES  (145, '6');
INSERT INTO Propietarios (idPropietario, idEquipo) VALUES  (146, '10');


CREATE TABLE TransmisionesPartidos (
	idPartido INTEGER NOT NULL,
	idCanalDeTransmisión INTEGER NOT NULL,
	PRIMARY KEY(idPartido, idCanalDeTransmisión),
	FOREIGN KEY (idPartido) REFERENCES Partidos(idPartido),
	FOREIGN KEY (idCanalDeTransmisión) REFERENCES CanalesDeTransmisión(idCanalDeTransmisión)
);

INSERT INTO TransmisionesPartidos (idPartido, idCanalDetransmisión) VALUES  ('1', '1');
INSERT INTO TransmisionesPartidos (idPartido, idCanalDetransmisión) VALUES  ('2', '2');
INSERT INTO TransmisionesPartidos (idPartido, idCanalDetransmisión) VALUES  ('3', '3');
INSERT INTO TransmisionesPartidos (idPartido, idCanalDetransmisión) VALUES  ('4', '4');
INSERT INTO TransmisionesPartidos (idPartido, idCanalDetransmisión) VALUES  ('5', '5');
INSERT INTO TransmisionesPartidos (idPartido, idCanalDetransmisión) VALUES  ('6', '6');
INSERT INTO TransmisionesPartidos (idPartido, idCanalDetransmisión) VALUES  ('7', '7');
INSERT INTO TransmisionesPartidos (idPartido, idCanalDetransmisión) VALUES  ('8', '1');
INSERT INTO TransmisionesPartidos (idPartido, idCanalDetransmisión) VALUES  ('9', '2');
INSERT INTO TransmisionesPartidos (idPartido, idCanalDetransmisión) VALUES  ('10', '3');
INSERT INTO TransmisionesPartidos (idPartido, idCanalDetransmisión) VALUES  ('11', '4');
INSERT INTO TransmisionesPartidos (idPartido, idCanalDetransmisión) VALUES  ('12', '5');
INSERT INTO TransmisionesPartidos (idPartido, idCanalDetransmisión) VALUES  ('13', '6');
INSERT INTO TransmisionesPartidos (idPartido, idCanalDetransmisión) VALUES  ('14', '7');
INSERT INTO TransmisionesPartidos (idPartido, idCanalDetransmisión) VALUES  ('15', '1');
INSERT INTO TransmisionesPartidos (idPartido, idCanalDetransmisión) VALUES  ('16', '2');
INSERT INTO TransmisionesPartidos (idPartido, idCanalDetransmisión) VALUES  ('17', '3');
INSERT INTO TransmisionesPartidos (idPartido, idCanalDetransmisión) VALUES  ('18', '4');
INSERT INTO TransmisionesPartidos (idPartido, idCanalDetransmisión) VALUES  ('19', '5');
INSERT INTO TransmisionesPartidos (idPartido, idCanalDetransmisión) VALUES  ('20', '6');
INSERT INTO TransmisionesPartidos (idPartido, idCanalDetransmisión) VALUES  ('21', '7');
INSERT INTO TransmisionesPartidos (idPartido, idCanalDetransmisión) VALUES  ('22', '1');
INSERT INTO TransmisionesPartidos (idPartido, idCanalDetransmisión) VALUES  ('23', '2');
INSERT INTO TransmisionesPartidos (idPartido, idCanalDetransmisión) VALUES  ('24', '3');
INSERT INTO TransmisionesPartidos (idPartido, idCanalDetransmisión) VALUES  ('25', '4');
INSERT INTO TransmisionesPartidos (idPartido, idCanalDetransmisión) VALUES  ('26', '5');
INSERT INTO TransmisionesPartidos (idPartido, idCanalDetransmisión) VALUES  ('27', '6');
INSERT INTO TransmisionesPartidos (idPartido, idCanalDetransmisión) VALUES  ('28', '7');
INSERT INTO TransmisionesPartidos (idPartido, idCanalDetransmisión) VALUES  ('29', '1');
INSERT INTO TransmisionesPartidos (idPartido, idCanalDetransmisión) VALUES  ('30', '2');
INSERT INTO TransmisionesPartidos (idPartido, idCanalDetransmisión) VALUES  ('31', '3');
INSERT INTO TransmisionesPartidos (idPartido, idCanalDetransmisión) VALUES  ('32', '4');
INSERT INTO TransmisionesPartidos (idPartido, idCanalDetransmisión) VALUES  ('33', '5');
INSERT INTO TransmisionesPartidos (idPartido, idCanalDetransmisión) VALUES  ('34', '6');
INSERT INTO TransmisionesPartidos (idPartido, idCanalDetransmisión) VALUES  ('35', '7');
INSERT INTO TransmisionesPartidos (idPartido, idCanalDetransmisión) VALUES  ('36', '1');
INSERT INTO TransmisionesPartidos (idPartido, idCanalDetransmisión) VALUES  ('37', '2');
INSERT INTO TransmisionesPartidos (idPartido, idCanalDetransmisión) VALUES  ('38', '3');
INSERT INTO TransmisionesPartidos (idPartido, idCanalDetransmisión) VALUES  ('39', '4');
INSERT INTO TransmisionesPartidos (idPartido, idCanalDetransmisión) VALUES  ('40', '5');
INSERT INTO TransmisionesPartidos (idPartido, idCanalDetransmisión) VALUES  ('41', '6');
INSERT INTO TransmisionesPartidos (idPartido, idCanalDetransmisión) VALUES  ('42', '7');
INSERT INTO TransmisionesPartidos (idPartido, idCanalDetransmisión) VALUES  ('43', '1');
INSERT INTO TransmisionesPartidos (idPartido, idCanalDetransmisión) VALUES  ('44', '2');
INSERT INTO TransmisionesPartidos (idPartido, idCanalDetransmisión) VALUES  ('45', '3');
INSERT INTO TransmisionesPartidos (idPartido, idCanalDetransmisión) VALUES  ('46', '4');
INSERT INTO TransmisionesPartidos (idPartido, idCanalDetransmisión) VALUES  ('47', '5');
INSERT INTO TransmisionesPartidos (idPartido, idCanalDetransmisión) VALUES  ('48', '6');
INSERT INTO TransmisionesPartidos (idPartido, idCanalDetransmisión) VALUES  ('49', '7');
INSERT INTO TransmisionesPartidos (idPartido, idCanalDetransmisión) VALUES  ('50', '1');
INSERT INTO TransmisionesPartidos (idPartido, idCanalDetransmisión) VALUES  ('51', '2');
INSERT INTO TransmisionesPartidos (idPartido, idCanalDetransmisión) VALUES  ('52', '3');
INSERT INTO TransmisionesPartidos (idPartido, idCanalDetransmisión) VALUES  ('53', '4');
INSERT INTO TransmisionesPartidos (idPartido, idCanalDetransmisión) VALUES  ('54', '5');
INSERT INTO TransmisionesPartidos (idPartido, idCanalDetransmisión) VALUES  ('55', '6');
INSERT INTO TransmisionesPartidos (idPartido, idCanalDetransmisión) VALUES  ('56', '7');
INSERT INTO TransmisionesPartidos (idPartido, idCanalDetransmisión) VALUES  ('57', '1');
INSERT INTO TransmisionesPartidos (idPartido, idCanalDetransmisión) VALUES  ('58', '2');
INSERT INTO TransmisionesPartidos (idPartido, idCanalDetransmisión) VALUES  ('59', '3');
INSERT INTO TransmisionesPartidos (idPartido, idCanalDetransmisión) VALUES  ('60', '4');
INSERT INTO TransmisionesPartidos (idPartido, idCanalDetransmisión) VALUES  ('1', '5');
INSERT INTO TransmisionesPartidos (idPartido, idCanalDetransmisión) VALUES  ('2', '6');
INSERT INTO TransmisionesPartidos (idPartido, idCanalDetransmisión) VALUES  ('3', '7');
INSERT INTO TransmisionesPartidos (idPartido, idCanalDetransmisión) VALUES  ('4', '1');
INSERT INTO TransmisionesPartidos (idPartido, idCanalDetransmisión) VALUES  ('5', '2');
INSERT INTO TransmisionesPartidos (idPartido, idCanalDetransmisión) VALUES  ('6', '3');
INSERT INTO TransmisionesPartidos (idPartido, idCanalDetransmisión) VALUES  ('7', '4');
INSERT INTO TransmisionesPartidos (idPartido, idCanalDetransmisión) VALUES  ('8', '5');
INSERT INTO TransmisionesPartidos (idPartido, idCanalDetransmisión) VALUES  ('9', '6');
INSERT INTO TransmisionesPartidos (idPartido, idCanalDetransmisión) VALUES  ('10', '7');
INSERT INTO TransmisionesPartidos (idPartido, idCanalDetransmisión) VALUES  ('11', '1');
INSERT INTO TransmisionesPartidos (idPartido, idCanalDetransmisión) VALUES  ('12', '2');
INSERT INTO TransmisionesPartidos (idPartido, idCanalDetransmisión) VALUES  ('13', '3');
INSERT INTO TransmisionesPartidos (idPartido, idCanalDetransmisión) VALUES  ('14', '4');
INSERT INTO TransmisionesPartidos (idPartido, idCanalDetransmisión) VALUES  ('15', '5');
INSERT INTO TransmisionesPartidos (idPartido, idCanalDetransmisión) VALUES  ('16', '6');
INSERT INTO TransmisionesPartidos (idPartido, idCanalDetransmisión) VALUES  ('17', '7');
INSERT INTO TransmisionesPartidos (idPartido, idCanalDetransmisión) VALUES  ('18', '1');
INSERT INTO TransmisionesPartidos (idPartido, idCanalDetransmisión) VALUES  ('19', '2');
INSERT INTO TransmisionesPartidos (idPartido, idCanalDetransmisión) VALUES  ('20', '3');

$$LANGUAGE plpgsql;
