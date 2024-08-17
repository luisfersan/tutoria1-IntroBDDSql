
CREATE DATABASE tutoria_2;

\c tutoria_2;

CREATE TABLE libros(
  id serial,
  titulo varchar(50),
  descripcion varchar(255)
);

INSERT 
INTO libros (titulo, descripcion) 
values  ('Cien años de soledad 2','Un libro bonito'),
        ('Pinocho 2','Libro infantil');

SELECT * FROM libros;

-- Para conectar a postgres desde la terminal 
-- psql -U postgres 
-- Para conectar a postgres y una BDD específica 
-- psql -U postgres -d nombreBDD
-- Para ejecutar desde la consula el archivo .sql
--\i ejercicios.sql

SELECT count (*) as cantidad_libros FROM libros;

ALTER TABLE libros ADD year DATE;

INSERT 
INTO libros (titulo, descripcion, year) 
values  ('Harry Potter','Libro mágico','2008-01-12'),
        ('Libro 3','Libro mágico','2015-01-12'),
        ('Tolken','No es un libro infantil','2011-01-12');

select date_part('year', timestamp '2001-02-16 20:38:40') as year,
       date_part('month', timestamp '2001-02-16 20:38:40') as month,
       date_part('day', timestamp '2001-02-16 20:38:40') as day,
       date_part('hour', timestamp '2001-02-16 20:38:40') as hour,
       date_part('minute', timestamp '2001-02-16 20:38:40') as minute

SELECT * FROM libros where year > (select date_part('year', timestamp '2001-02-16 20:38:40')); 