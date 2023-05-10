/*create database BDMonitores
go 

use BDMonitores
go

-- Crear tabla Estudiantes
CREATE TABLE Estudiantes (
    ID_estudiante int PRIMARY KEY,
    IDUCA int not null unique,
    Nombre nvarchar(50),
    Apellido nvarchar(50),
    FechaNac datetime,
    Correo_electronico nvarchar(100),
    Telefono nvarchar(20),
    Carrera nvarchar(50),
    Activo bit default 'true'
);

-- Crear tabla Clases
CREATE TABLE Clases (
    ID_clase int PRIMARY KEY,
    Codigo_clase nvarchar(20) unique not null,
    Nombre_clase nvarchar(50) not null,
    Horario nvarchar(50)
);

-- Crear tabla Monitores
CREATE TABLE Monitores (
    ID_monitor int PRIMARY KEY,
    ID_estudiante int,
    ID_clase int,
    Anio_en_curso int,
    Semestre_en_curso nvarchar(20),
    FOREIGN KEY (ID_estudiante) REFERENCES Estudiantes(ID_estudiante),
    FOREIGN KEY (ID_clase) REFERENCES Clases(ID_clase)
);
*/

INSERT INTO Estudiantes(ID_estudiante, IDUCA, Nombre, Apellido, FechaNac, Correo_electronico, Telefono, Carrera, Activo)
VALUES
(1,	1,	    N'Avi',	N'Zepeda',	    '05-06-98',	 N'avi.Zepeda@uca.com',	        N'8888-8801',	N'Ingenieria en sistemas',	'true'),
(2,	2,	    N'Camilo', N'Solis',	    '05-06-99',	 N'camilo.Solis@uca.com',	    N'8888-8802',	N'Sociologia',	'false'),
(3,	3,	    N'Diego', N'Urbina',	    '05-06-00',	 N'diego.Urbina@uca.com',	    N'8888-8803',	N'Ingenieria ambiental',	'false'),
(4,	4,	    N'Juan', N'Gomez',	        '05-06-01',	 N'juan.Gomez@uca.com',	        N'8888-8804',	N'Ingenieria industrial',	'true'),
(5,	5,	    N'Juan', N'Lopez',	        '09-07-02',	 N'juan.Lopez@uca.com',	        N'8888-8805',	N'Ingenieria civil',	'false'),
(6,	6,	    N'Juan', N'Perez',	        '10-07-02',	 N'juan .Perez@uca.com',	    N'8888-8806',	N'Contaduria publica y finanzas',	'true'),
(7,	7,	    N'Ana',	N'Gomez',	        '11-07-02',	 N'ana.Gomez@uca.com',	        N'8888-8807',	N'Comunicacion',	'false'),
(8,	8,	    N'Ana',	N'Lopez',	        '05-02-98',	 N'ana.Lopez@uca.com',	        N'8888-8808',	N'Administracion de empresas',	'true'),
(9,	9,	    N'Ana', 	N'Perez',	        '05-03-98',	 N'ana .Perez@uca.com',	        N'8888-8809',	N'Psicologia',	'true'),
(10, 10,	    N'Maria', N'Gomez',	        '05-04-98',	 N'maria.Gomez@uca.com',	    N'8888-8810',	N'Diseño grafico',	'false'),
(11, 11,	N'Maria', N'Lopez',	        '05-05-98',	 N'maria.Lopez@uca.com',	    N'8888-8811',	N'Ingenieria en sistemas',	'false'),
(12, 12,	N'Maria', N'Ramirez',	    '05-06-98', N'maria.Ramirez@uca.com',	    N'8888-8812',	N'Sociologia',	'true'),
(13, 13,	N'Jon',	N'Areas',	        '05-07-98',	 N'jon.Areas@uca.com',	        N'8888-8813',	N'Ingenieria ambiental',	'false'),
(14, 14,	N'Jon',	N'Cuadra',	    '05-08-05',	 N'jon.Cuadra@uca.com',	        N'8888-8814',	N'Ingenieria industrial',	'false'),
(15, 15,	N'Jon',	N'Palacios',	    '05-09-05',	 N'jon.Palacios@uca.com',	    N'8888-8815',	N'Ingenieria civil',	'true'),
(16, 16,	N'Jean', N'Castillo',	    '05-07-98',	 N'jean.Castillo@uca.com',	    N'8888-8816',	N'Contaduria publica y finanzas',	'false'),
(17, 17,	N'Jean', N'Morales',	    '05-08-05',	 N'jean.Morales@uca.com',	    N'8888-8817',	N'Comunicacion',	'true'),
(18, 18,	N'Jean', N'Garcia',	        '05-09-05',	 N'jean.Garcia@uca.com',	    N'8888-8818',	N'Administracion de empresas',	'false'),
(19, 19,	N'Patricio', N'Estrella',	'05-07-98',	 N'patricio.Estrella@uca.com',	N'8888-8820',	N'Diseño grafico',	'true'),
(20, 20,	N'Aurelio', N'Duran',	'05-07-98',	 N'aurelio.duran@uca.com',	N'8888-8823',	N'Diseño grafico',	'true'),
(21, 21,	N'Elsa',	N'Kate',	        '05-06-94',	 N'elsa.Kate.@uca.com',	        N'8888-8821',	N'Ingenieria en sistemas',	'false'),
(22, 22,	N'Elsa', N'Escalante',	    '05-06-95',	 N'elsa.Escalante@uca.com',	    N'8888-8822',	N'Sociologia',	'true'),
(23, 23,	N'Anas',	N'Tacio',	        '05-06-96',	 N'anas.Tacio@uca.com',	        N'8888-8823',	N'Ingenieria ambiental',	'false'),
(24, 24,	N'Plaza',	N'Sezamo',	    '05-06-97',	 N'plaza.Sezamo@uca.com',	    N'8888-8824',	N'Ingenieria industrial',	'true'),
(25, 25,	N'John',	N'Newman',	    '05-06-98',	 N'john.Newman@uca.com',	    N'8888-8825',	N'Ingenieria civil',	'false'),
(26, 26,	N'John',  N'Nosequeponer',	'05-06-99',	 N'john.Nosequeponer@uca.com',	N'8888-8826',	N'Contaduria publica y finanzas',	'true'),
(27, 27,	N'Carla',	N'zapata',	    '05-06-00',	 N'carla.Zapata@uca.com',	    N'8888-8827',	N'Comunicacion',	'false'),
(28, 28,	N'Carla',	N'Lopez',	        '05-07-00',	 N'carla.Lopez@uca.com',	    N'8888-8828',	N'Administracion de empresas',	'false'),
(29, 29,	N'Carla', N'Valencia',	    '05-08-00',	 N'carla.Valencia@uca.com',	    N'8888-8829',	N'Psicologia',	'false'),
(30, 30,	N'Maria', N'Guevara',	    '05-09-00',	 N'maria.Guevara@uca.com',	    N'8888-8830',	N'Diseño grafico',	'false'),
(31, 31,	N'Maria',	N'Campos',	    '05-10-00',	 N'maria.Campos@uca.com',	    N'8888-8831',	N'Ingenieria en sistemas',	'true'),
(32, 32,	N'Carmelo',	N'Reyes',	    '05-11-00',	 N'carmelo.Reyes@uca.com',	    N'8888-8832',	N'Sociologia',	'false'),
(33, 33,	N'Carmelo',	N'Silva',	    '05-12-00',	 N'carmelo.Silva@uca.com',	    N'8888-8833',	N'Ingenieria ambiental',	'true'),
(34, 34,	N'Carmelo',	N'Hopkins',	'05-01-01',	 N'carmelo.Hopkins@uca.com',	N'8888-8834',	N'Ingenieria industrial',	'false'),
(35, 35,	N'Randy',	N'Newman',	    '05-02-01',	 N'randy.Newman@uca.com',	    N'8888-8835',	N'Ingenieria civil',	'true'),
(36, 36,	N'Elrayo',	N'Makuin',	'05-03-01',	 N'elrayo.Makuin@uca.com',	    N'8888-8836',	N'Contaduria publica y finanzas',	'true'),
(37, 37,	N'Guillermo', N'Nigote',	'05-04-01',	 N'guillermo.Nigote@uca.com',	N'8888-8837',	N'Comunicacion',	'false'),
(38, 38,	N'Luces',	N'Rojas',	        '05-05-01',	 N'luces.Rojas@uca.com',	    N'8888-8838',	N'Administracion de empresas',	'true'),
(39, 39,	N'Ambu',	N'Lancia',	    '05-06-01',	 N'ambu.Lancia@uca.com',	    N'8888-8839',	N'Psicologia',	'false'),
(40, 40,	N'Erling',	N'Haaland',	'05-07-01',	 N'erling.Haaland@uca.com',	    N'8888-8840',	N'Diseño grafico',	'true')

SELECT * FROM Estudiantes

INSERT INTO Clases (ID_clase, Codigo_clase, Nombre_clase, Horario) VALUES (1, 'CSC101', 'Introducción a la programación', 'Lunes 9-11 am');

INSERT INTO Clases (ID_clase, Codigo_clase, Nombre_clase, Horario) VALUES (2, 'MAT201', 'Cálculo I', 'Martes 2-4 pm');

INSERT INTO Clases (ID_clase, Codigo_clase, Nombre_clase, Horario) VALUES (3, 'PHY301', 'Mecánica cuántica', 'Miércoles 10-12 pm');

INSERT INTO Clases (ID_clase, Codigo_clase, Nombre_clase, Horario) VALUES (4, 'BIO401', 'Genética molecular', 'Jueves 1-3 pm');

INSERT INTO Clases (ID_clase, Codigo_clase, Nombre_clase, Horario) VALUES (5, 'HIS501', 'Historia del arte', 'Viernes 4-6 pm');

INSERT INTO Clases (ID_clase, Codigo_clase, Nombre_clase, Horario) VALUES (6, 'ENG601', 'Literatura inglesa', 'Lunes 2-4 pm');

INSERT INTO Clases (ID_clase, Codigo_clase, Nombre_clase, Horario) VALUES (7, 'MUS701', 'Teoría musical', 'Miércoles 6-8 pm');

INSERT INTO Clases (ID_clase, Codigo_clase, Nombre_clase, Horario) VALUES (8, 'ECO801', 'Microeconomía', 'Martes 10-12 pm');

INSERT INTO Clases (ID_clase, Codigo_clase, Nombre_clase, Horario) VALUES (9, 'PSY901', 'Psicología social', 'Jueves 3-5 pm');

INSERT INTO Clases (ID_clase, Codigo_clase, Nombre_clase, Horario) VALUES (10, 'SOC1001', 'Introducción a la sociología', 'Viernes 10-12 pm');

SELECT * FROM Clases

INSERT INTO Monitores (ID_monitor, ID_estudiante, ID_clase, Anio_en_curso, Semestre_en_curso) VALUES (1, 40, 4, 2, 'Primer Semestre')

INSERT INTO Monitores (ID_monitor, ID_estudiante, ID_clase, Anio_en_curso, Semestre_en_curso) VALUES (2, 37, 9, 3, 'Segundo Semestre') 

INSERT INTO Monitores (ID_monitor, ID_estudiante, ID_clase, Anio_en_curso, Semestre_en_curso) VALUES (3, 4, 1, 4, 'Segundo Semestre')

INSERT INTO Monitores (ID_monitor, ID_estudiante, ID_clase, Anio_en_curso, Semestre_en_curso) VALUES (4, 15, 8, 3, 'Segundo Semestre')

INSERT INTO Monitores (ID_monitor, ID_estudiante, ID_clase, Anio_en_curso, Semestre_en_curso) VALUES (5, 21, 2, 2, 'Segundo Semestre')

INSERT INTO Monitores (ID_monitor, ID_estudiante, ID_clase, Anio_en_curso, Semestre_en_curso) VALUES (6, 31, 3, 2, 'Primer Semestre')

INSERT INTO Monitores (ID_monitor, ID_estudiante, ID_clase, Anio_en_curso, Semestre_en_curso) VALUES (7, 38, 2, 2, 'Segundo Semestre')

INSERT INTO Monitores (ID_monitor, ID_estudiante, ID_clase, Anio_en_curso, Semestre_en_curso) VALUES (8, 30, 5, 2, 'Primer Semestre')

INSERT INTO Monitores (ID_monitor, ID_estudiante, ID_clase, Anio_en_curso, Semestre_en_curso) VALUES (9, 27, 4, 3, 'Segundo Semestre')

INSERT INTO Monitores (ID_monitor, ID_estudiante, ID_clase, Anio_en_curso, Semestre_en_curso) VALUES (10, 23, 1, 2, 'Segundo Semestre')

INSERT INTO Monitores (ID_monitor, ID_estudiante, ID_clase, Anio_en_curso, Semestre_en_curso) VALUES (11, 22, 7, 2, 'Segundo Semestre')

INSERT INTO Monitores (ID_monitor, ID_estudiante, ID_clase, Anio_en_curso, Semestre_en_curso) VALUES (12, 39, 10, 3, 'Segundo Semestre')

INSERT INTO Monitores (ID_monitor, ID_estudiante, ID_clase, Anio_en_curso, Semestre_en_curso) VALUES (13, 13, 10, 2, 'Primer Semestre')

INSERT INTO Monitores (ID_monitor, ID_estudiante, ID_clase, Anio_en_curso, Semestre_en_curso) VALUES (14, 34, 1, 2, 'Segundo Semestre')

INSERT INTO Monitores (ID_monitor, ID_estudiante, ID_clase, Anio_en_curso, Semestre_en_curso) VALUES (15, 16, 2, 3, 'Primer Semestre')

INSERT INTO Monitores (ID_monitor, ID_estudiante, ID_clase, Anio_en_curso, Semestre_en_curso) VALUES (16, 2, 10, 2, 'Segundo Semestre')

INSERT INTO Monitores (ID_monitor, ID_estudiante, ID_clase, Anio_en_curso, Semestre_en_curso) VALUES (17, 11, 8, 3, 'Segundo Semestre')

INSERT INTO Monitores (ID_monitor, ID_estudiante, ID_clase, Anio_en_curso, Semestre_en_curso) VALUES (18, 3, 6, 3, 'Primer Semestre')

INSERT INTO Monitores (ID_monitor, ID_estudiante, ID_clase, Anio_en_curso, Semestre_en_curso) VALUES (19, 12, 1, 3, 'Segundo Semestre')

INSERT INTO Monitores (ID_monitor, ID_estudiante, ID_clase, Anio_en_curso, Semestre_en_curso) VALUES (20, 28, 2, 1, 'Segundo Semestre')

--  Mostrar nombre completo de los monitores, la clase que van a impartir y su correo electrónico

SELECT Estudiantes.Nombre + ' ' + Estudiantes.Apellido AS NombreCompleto, 
       Clases.Nombre_clase AS ClaseImpartida, 
       Estudiantes.Correo_electronico AS CorreoElectronico
FROM Monitores 
INNER JOIN Estudiantes ON Monitores.ID_estudiante = Estudiantes.ID_estudiante 
INNER JOIN Clases ON Monitores.ID_clase = Clases.ID_clase;

-- Mostrar los monitores de la carrera de Ingeniería en sistema de información

SELECT Monitores.ID_monitor, Estudiantes.Nombre + ' ' + Estudiantes.Apellido AS NombreCompleto, Clases.Nombre_clase, Estudiantes.Correo_electronico
FROM Monitores, Estudiantes, Clases
WHERE Monitores.ID_estudiante = Estudiantes.ID_estudiante
  AND Monitores.ID_clase = Clases.ID_clase
  AND Estudiantes.Carrera = 'Ingenieria en sistemas';


--  Mostrar los monitores que cumplen años en el mes de mayo

SELECT Estudiantes.Nombre + ' ' + Estudiantes.Apellido AS 'Nombre Completo',
       Clases.Nombre_clase AS 'Clase a Impartir',
       Estudiantes.Correo_electronico AS 'Correo Electrónico'
FROM Estudiantes, Clases, Monitores
WHERE Estudiantes.ID_estudiante = Monitores.ID_estudiante
  AND Clases.ID_clase = Monitores.ID_clase
  AND MONTH(Estudiantes.FechaNac) = 5;   

-- Mostrar los monitores que cumplen años durante la semana del 8 al 13 de mayo

SELECT Monitores.ID_monitor, Estudiantes.Nombre + ' ' + Estudiantes.Apellido AS NombreCompleto, Clases.Nombre_clase, Estudiantes.Correo_electronico 
FROM Monitores, Estudiantes, Clases 
WHERE Monitores.ID_estudiante = Estudiantes.ID_estudiante 
  AND Monitores.ID_clase = Clases.ID_clase 
  AND MONTH(Estudiantes.FechaNac) = 5 
  AND DAY(Estudiantes.FechaNac) BETWEEN 8 AND 13 
 
-- Mostrar los monitores que posean en su nombre la letra u

SELECT Estudiantes.Nombre, Estudiantes.Apellido
FROM Estudiantes, Monitores
WHERE Estudiantes.ID_estudiante = Monitores.ID_estudiante
AND (Estudiantes.Nombre LIKE '%U%' OR Estudiantes.Apellido LIKE '%U%')

-- Contar monitores mayores de edad

SELECT COUNT(*) AS Monitores_Mayores
FROM Monitores
INNER JOIN Estudiantes ON Monitores.ID_estudiante = Estudiantes.ID_estudiante
WHERE DATEDIFF(YEAR, Estudiantes.FechaNac, GETDATE()) >= 18

-- Contar monitores menores de edad

SELECT COUNT(*) AS Monitores_Menores
FROM Monitores
INNER JOIN Estudiantes ON Monitores.ID_estudiante = Estudiantes.ID_estudiante
WHERE DATEDIFF(YEAR, Estudiantes.FechaNac, GETDATE()) < 18

-- Mostrar Horarios 

SELECT Clases.Horario, Estudiantes.Nombre, Estudiantes.Apellido
FROM Monitores 
INNER JOIN Estudiantes ON Monitores.ID_estudiante = Estudiantes.ID_estudiante 
INNER JOIN Clases ON Monitores.ID_clase = Clases.ID_clase;

-- Editar 5 registros tabla Monitores

UPDATE Monitores
SET Anio_en_curso = 3, Semestre_en_curso = 'Verano 2022'
WHERE ID_monitor IN (SELECT TOP 5 ID_monitor FROM Monitores)

--Eliminar 4 registros tabla Clases 

DELETE TOP(4) FROM Clases;

DELETE FROM Clases
WHERE ID_clase IN (1, 3, 5);

--Eliminar tablas Estudiantes y Monitores

DELETE FROM Estudiantes;
DELETE FROM Monitores; 