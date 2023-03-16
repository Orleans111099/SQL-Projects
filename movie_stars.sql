/* PROJECT WORK */

/*using the challenges database */
USE challenges;

/* creating new tables */

CREATE TABLE movie_stars (id INTEGER PRIMARY KEY AUTO_INCREMENT,
    first_name TEXT,
    last_name TEXT,
    twitter TEXT,
    starmeter TEXT,
    birthdate TEXT,
    following_id INTEGER);

INSERT INTO movie_stars (first_name, last_name, twitter , starmeter, birthdate, following_id)
    VALUES ("Antonio", "Banderas", "@antoniobanderas", "228", "1960-08-10", 5);
INSERT INTO movie_stars (first_name, last_name, twitter, STARmeter, birthdate, following_id)
    VALUES ("Leonardo", "DiCaprio", "@LeoDiCaprio", "38", "1974-11-11", 6);
INSERT INTO movie_stars (first_name, last_name, twitter, STARmeter, birthdate, following_id)
    VALUES ("Adam", "Driver", "@AdamDriver83", "14", "1983-11-19", 2);
INSERT INTO movie_stars (first_name, last_name, twitter, STARmeter, birthdate, following_id)
    VALUES ("Joaquin", "Phoenix", "@JoPhoenix74", "10", "1974-10-28", 2);
INSERT INTO movie_stars (first_name, last_name, twitter, STARmeter, birthdate, following_id)
    VALUES ("Jonathan", "Pryce", "@Pryce47", "179", "1947-06-01", 9);
INSERT INTO movie_stars (first_name, last_name, twitter, STARmeter, birthdate, following_id)
    VALUES ("Tom", "Hanks", "@tomhanks", "58", "1956-07-09", 4);
INSERT INTO movie_stars (first_name, last_name, twitter, STARmeter, birthdate, following_id)
    VALUES ("Anthony", "Hopkins", "@ahopkins", "317", "1937-12-31", 4);
INSERT INTO movie_stars (first_name, last_name, twitter, STARmeter, birthdate, following_id)
    VALUES ("Al", "Pacino", "@alpacino", "123", "1940-04-25", 10);
INSERT INTO movie_stars (first_name, last_name, twitter, STARmeter, birthdate, following_id)
    VALUES ("Joe", "Pesci", "@pesci", "178", "1943-02-09", 8);
INSERT INTO movie_stars (first_name, last_name, twitter, STARmeter, birthdate, following_id)
    VALUES ("Brad", "Pitt", "@bradpitt", "37", "1963-12-18", 7);

CREATE TABLE leading_role (id INTEGER PRIMARY KEY AUTO_INCREMENT,
    stars_id INTEGER,
    movie TEXT,
    rate INTEGER);

INSERT INTO leading_role (stars_id, movie, rate)
    VALUES (4, "Joker", 8.6);
INSERT INTO leading_role (stars_id, movie, rate)
    VALUES (3, "Marriage Story", 8.1);
INSERT INTO leading_role (stars_id, movie, rate)
    VALUES (2, "Once Upon a Time... in Hollywood", 7.8);
INSERT INTO leading_role (stars_id, movie, rate)
    VALUES (1, "Pain and Glory", 7.6);
INSERT INTO leading_role (stars_id, movie, rate)
    VALUES (5, "The Two Popes", 7.6);


CREATE TABLE supporting_role (id INTEGER PRIMARY KEY AUTO_INCREMENT,
    stars_id INTEGER,
    movie TEXT,
    rate INTEGER);

INSERT INTO supporting_role (stars_id, movie, rate)
    VALUES (9, "The Irishman", 8.0);
INSERT INTO supporting_role (stars_id, movie, rate)
    VALUES (8, "The Irishman", 8.0);
INSERT INTO supporting_role (stars_id, movie, rate)
    VALUES (10, "Once Upon a Time... in Hollywood", 7.8);
INSERT INTO supporting_role (stars_id, movie, rate)
    VALUES (6, "A Beautiful Day in the Neighborhood", 7.6);
INSERT INTO supporting_role (stars_id, movie, rate)
    VALUES (8, "The Two Popes", 7.6);

/* querying all tables */
SELECT * FROM movie_stars;
SELECT * FROM leading_role;
SELECT * FROM supporting_role;

/* cross joining tables to show movie stars and their leading roles*/
SELECT movie_stars.first_name, movie_stars.last_name, leading_role.movie, leading_role.rate
FROM movie_stars
CROSS JOIN leading_role
ON movie_stars.id = leading_role.id;

/*right joining tables to show movie stars and their supporting roles*/
SELECT movie_stars.first_name, movie_stars.last_name, supporting_role.movie, supporting_role.rate
FROM movie_stars
RIGHT JOIN supporting_role
ON movie_stars.id = supporting_role.id;

SELECT movie_stars.first_name, movie_stars.last_name, leading_role.movie, leading_role.rate 
FROM movie_stars
JOIN leading_role
ON movie_stars.id = supporting_role.stars_id
WHERE rate > 8;

SELECT movie_stars.first_name, movie_stars.last_name, supporting_role.movie, supporting_role.rate 
FROM movie_stars
JOIN supporting_role
ON movie_stars.id = supporting_role.stars_id
WHERE rate > 8;

SELECT movie_stars.first_name, movie_stars.last_name, movie_stars.starmeter;

SELECT movie_stars.first_name, movie_stars.last_name, movie_stars.starmeter as starmeter
FROM movie_stars
WHERE movie_stars.starmeter >= 10;

SELECT count(*) AS Number_of_Movie_Stars
FROM movie_stars;

SELECT avg(starmeter) as Average_Starmeter
FROM movie_stars;

SELECT movie_stars.first_name, movie_stars.last_name, movie_stars.following_id
FROM movie_stars
WHERE movie_stars.following_id > 5;

SELECT movie_stars.first_name, movie_stars.last_name, movie_stars.following_id
FROM movie_stars
WHERE movie_stars.following_id > 5
AND movie_stars.starmeter >= 100;

SELECT movie_stars.first_name, movie_stars.last_name, movie_stars.following_id
FROM movie_stars
WHERE movie_stars.following_id < 5
OR movie_stars.starmeter < 100;

