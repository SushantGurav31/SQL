CREATE DATABASE Cinema_Hall;

USE Cinema_Hall;

CREATE TABLE Movies (
movie_code int,
title varchar(255),
director varchar (255),
relase_year year,
rating decimal (3,1)

);

INSERT INTO Movies(movie_code,title,director,relase_year,rating) VALUES (201,"inception","Christopher Nolan",2010,8.8);
INSERT INTO Movies(movie_code,title,director,relase_year,rating) VALUES (202,"The Matrix","Lana Wachowski",1999,8.7);
INSERT INTO Movies(movie_code,title,director,relase_year,rating) VALUES (203,"Interstellar","Christopher Nolan",2014,8.6);
INSERT INTO Movies(movie_code,title,director,relase_year,rating) VALUES (204,"Parasite","Bong Joon-ho",2019,8.5);
INSERT INTO Movies(movie_code,title,director,relase_year,rating) VALUES (205,"Tent","Christopher Nolan",2020,7.8);
INSERT INTO Movies(movie_code,title,director,relase_year,rating) VALUES (206,"Avtar","James Cameron",2009,7.9);

select * from movies;

select * from Movies order by rating desc;

select * from movies order by relase_year desc;

UPDATE movies SET rating = rating + 0.2 WHERE director = "Christopher Nolan";

UPDATE movies SET rating =8.1 WHERE title = "Tent";

delete from movies where relase_year <2010;

delete from movies where rating <8.0;

select * from movies order by rating desc limit 3;

select * from movies order by relase_year desc limit 2,3;
