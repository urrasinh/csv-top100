-- Crear base de datos llamada películas.
CREATE DATABASE peliculas;
\c peliculas;

CREATE TABLE peliculas (id INT PRIMARY KEY, pelicula VARCHAR(100), anio_estreno INT, director VARCHAR(50));

CREATE TABLE reparto (peliculas_fk INT, actor VARCHAR(70), FOREIGN KEY (peliculas_fk) REFERENCES peliculas(id));

-- Cargar ambos archivos a su tabla correspondiente.

\COPY peliculas FROM 'C:\Users\Guillermo\3D Objects\Full Stack Javascritpt\M5\desafio-top100\peliculas.csv' csv header;
\COPY reparto FROM 'C:\Users\Guillermo\3D Objects\Full Stack Javascritpt\M5\desafio-top100\reparto.csv' csv header;

-- Obtener el ID de la película “Titanic”.
SELECT id AS titanic_id FROM peliculas WHERE pelicula = 'Titanic';

-- Listar a todos los actores que aparecen en la película "Titanic".
SELECT actor AS reparto_titanic FROM reparto WHERE peliculas_fk = 2; 

-- Consultar en cuántas películas del top 100 participa Harrison Ford.
SELECT COUNT (peliculas_fk) AS peliculas_harrison_ford FROM reparto WHERE actor = 'Harrison Ford';

-- Indicar las películas estrenadas entre los años 1990 y 1999 ordenadas por título de manera ascendente.
SELECT pelicula FROM peliculas WHERE anio_estreno BETWEEN 1990 AND 1999 ORDER BY pelicula ASC;

-- Hacer una consulta SQL que muestre los títulos con su longitud, la longitud debe ser nombrado para la consulta como “longitud_titulo”.
SELECT pelicula, LENGTH(pelicula) AS longitud_titulo FROM peliculas;

-- Consultar cual es la longitud más grande entre todos los títulos de las películas.
SELECT MAX(LENGTH(pelicula)) AS pelicula_maximo_caracter FROM peliculas;