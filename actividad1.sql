-- psql -U posgres
-- ingrese la contraseña
-- \l 
CREATE DATABASE prueba1;
-- \l
-- \c prueba1
CREATE TABLE estudiantes(
    nombres varchar(50),
     notas varchar(50)
);
-- \dt
ALTER TABLE estudiantes ADD apellido varchar(50);
-- \d estudiantes
ALTER TABLE estudiantes DROP COLUMN apellido;
-- \d estudiantes
INSERT INTO estudiantes (nombres, notas) VALUES
('Juan', "7"),
('Ana', '8'),
('Pedro', '6'),
('Maria', '9'),
('Carlos', '5'),
('Jose', '2');

SELECT * FROM estudiantes;

INSERT INTO estudiantes (nombres) VALUES
('Luis'),
('Lucia');

SELECT * FROM estudiantes;

DELETE FROM estudiantes
WHERE notas IS NULL;

SELECT * FROM estudiantes;

UPDATE estudiantes
SET notas = '10'
WHERE notas = (SELECT MIN(notas) FROM estudiantes);

SELECT * FROM estudiantes;

INSERT INTO estudiantes (nombres) VALUES
('Este nombre contiene mas de 50 caracteres por lo tanto deberia de tirar un error en la consola de psql. aslkdjaskdjaksdaskjdaasdasd');

SELECT * FROM estudiantes;

SELECT * FROM estudiantes
WHERE nombres = 'Juan' OR nombres = 'Ana';

SELECT nombres FROM estudiantes
ORDER BY nombres ASC;

SELECT nombres FROM estudiantes
ORDER BY nombres DESC;

SELECT * FROM estudiantes 
ORDER BY notas::numeric ASC;

SELECT * FROM estudiantes
ORDER BY notas::numeric DESC
LIMIT 3;

SELECT * FROM estudiantes
WHERE notas::numeric > 3 AND notas::numeric < 8;