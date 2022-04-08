-- Crear base de datos llamada películas.
CREATE DATABASE peliculas;
\c peliculas;

CREATE TABLE peliculas(id INT PRIMARY KEY, pelicula VARCHAR(50), anio_estreno INT, director VARCHAR(50));

CREATE TABLE reparto(id SERIAL PRIMARY KEY, peliculas_fk INT, actor VARCHAR(50), FOREIGN KEY (peliculas_fk) REFERENCES peliculas(id));

-- Cargar ambos archivos a su tabla correspondiente.

\COPY peliculas FROM 'C:\Users\Guillermo\3D Objects\Full Stack Javascritpt\M5\desafio-top100\peliculas.csv' csv header;
\COPY reparto FROM 'C:\Users\Guillermo\3D Objects\Full Stack Javascritpt\M5\desafio-top100\peliculas.csv' csv [header];
-- Obtener el ID de la película “Titanic”.
-- Listar a todos los actores que aparecen en la película "Titanic".
-- Consultar en cuántas películas del top 100 participa Harrison Ford.
-- Indicar las películas estrenadas entre los años 1990 y 1999 ordenadas por título de manera ascendente.
-- Hacer una consulta SQL que muestre los títulos con su longitud, la longitud debe ser nombrado para la consulta como “longitud_titulo”.
-- Consultar cual es la longitud más grande entre todos los títulos de las películas.