/* Marvel Heroes and Villains
 Based on the website http://marvel.wikia.com/Main_Page
 with popularity data from http://observationdeck.io9.com/something-i-found-marvel-character-popularity-poll-cb-1568108064 
 and power grid data from http://marvel.wikia.com/Power_Grid#Power
 Collected by: https://www.khanacademy.org/profile/Mentrasto/
 */

/*Using Challenges Dataset */
Use challenges;

/* Creating marvels table */

CREATE TABLE marvels (ID INTEGER PRIMARY KEY,
    name TEXT,
    popularity INTEGER,
    alignment TEXT,
    gender TEXT, 
    height_m FLOAT,
    weight_kg FLOAT,
    hometown TEXT,
    intelligence INTEGER,
    strength INTEGER,
    speed INTEGER,
    durability INTEGER,
    energy_Projection INTEGER,
    fighting_Skills INTEGER);

INSERT INTO marvels VALUES(1, "Spider Man", 1, "Good", "Male", 1.78, 75.75, "USA", 4, 4, 3, 3, 1, 4); 
INSERT INTO marvels VALUES(2, "Iron Man", 20, "Neutral", "Male", 1.98, 102.58, "USA", 6, 6, 5, 6, 6, 4); 
INSERT INTO marvels VALUES(3, "Hulk", 18, "Neutral", "Male", 2.44, 635.29, "USA", 1, 7, 3, 7, 5, 4); 
INSERT INTO marvels VALUES(4, "Wolverine", 3, "Good", "Male", 1.6, 88.46, "Canada", 2, 4, 2, 4, 1, 7);
INSERT INTO marvels VALUES(5, "Thor", 5, "Good", "Male", 1.98, 290.3, "Asgard", 2, 7, 7, 6, 6, 4);
INSERT INTO marvels VALUES(6, "Green Goblin", 91, "Bad", "Male", 1.93, 174.63, "USA", 4, 4, 3, 4, 3, 3);
INSERT INTO marvels VALUES(7, "Magneto", 11, "Neutral", "Male", 1.88, 86.18, "Germany", 6, 3, 5, 4, 6, 4);
INSERT INTO marvels VALUES(8, "Thanos", 47, "Bad", "Male", 2.01, 446.79, "Titan", 6, 7, 7, 6, 6, 4);
INSERT INTO marvels VALUES(9, "Loki", 32, "Bad", "Male", 1.93, 238.14, "Jotunheim", 5, 5, 7, 6, 6, 3);
INSERT INTO marvels VALUES(10, "Doctor Doom", 19, "Bad", "Male", 2.01, 188.24, "Latveria", 6, 4, 5, 6, 6, 4);
INSERT INTO marvels VALUES(11, "Jean Grey", 8, "Good", "Female", 1.68, 52.16, "USA", 3, 2, 7, 7, 7, 4);
INSERT INTO marvels VALUES(12, "Rogue", 4, "Good", "Female", 1.73, 54.43, "USA", 7, 7, 7, 7, 7, 7);
INSERT INTO marvels VALUES(13, "Storm", 2, "Good", "Female", 1.80, 66, "Kenya", 2, 2, 3, 2, 5, 4);
INSERT INTO marvels VALUES(14, "Nightcrawler", 6, "Good", "Male", 1.75, 73, "Germany", 3, 2, 7, 2, 1, 3);
INSERT INTO marvels VALUES(15, "Gambit", 7, "Good", "Male", 1.88, 81, "EUA", 2, 2, 2, 2, 2, 4);
INSERT INTO marvels VALUES(16, "Captain America", 9, "Good", "Male", 1.88, 108, "EUA", 3, 3, 2, 3, 1, 6);
INSERT INTO marvels VALUES(17, "Cyclops", 10, "Good", "Male", 1.90, 88, "EUA", 3, 2, 2, 2, 5, 4);
INSERT INTO marvels VALUES(18, "Emma Frost", 12, "Neutral", "Female", 1.78, 65, "EUA", 4, 4, 2, 5, 5, 3);
INSERT INTO marvels VALUES(19, "Kitty Pryde", 13, "Good", "Female", 1.68, 50, "EUA", 4, 2, 2, 3, 1, 5);
INSERT INTO marvels VALUES(20, "Daredevil", 14, "Good", "Male", 1.83, 91, "EUA", 3, 3, 2, 2, 4, 5);
INSERT INTO marvels VALUES(21, "Punisher", 50, "Neutral", "Male", 1.85, 91, "EUA", 3, 3, 2, 2, 1, 6);
INSERT INTO marvels VALUES(22, "Silver Surfer", 33, "Good", "Male", 1.93, 102, "Zenn-La", 3, 7, 7, 6, 7, 2);
INSERT INTO marvels VALUES(23, "Ghost Rider", 86, "Good", "Male", 1.88, 99, "EUA", 2, 4, 3, 5, 4, 2);
INSERT INTO marvels VALUES(24, "Venom", 78, "Neutral", "Male", 1.90, 118, "EUA", 3, 4, 2, 6, 1, 4);
INSERT INTO marvels VALUES(25, "Juggernaut", 76, "Neutral", "Male", 2.87, 862, "EUA", 2, 7, 2, 7, 1, 4);
INSERT INTO marvels VALUES(26, "Professor X", 58, "Good", "Male", 1.83, 86, "EUA", 5, 2, 2, 2, 5, 3);

/* Select all columns in marvels table */
SELECT *
FROM marvels;

/* selecting maximum weight of marvel characters */
SELECT max(weight_kg) as maximum_weight
FROM marvels;

/* selecting minimum weight of marvel characters */
SELECT min(weight_kg) as minimum_weight
FROM marvels;

/* selecting average weight of marvel characters */
SELECT round(avg(weight_kg),2) as average_weight
FROM marvels;

/* selecting maximum height of marvel characters */
SELECT max(height_m) as maximum_height
FROM marvels;

/* selecting minimum height of marvel characters */
SELECT min(height_m) as minimum_height
FROM marvels;

/* selecting average height of marvel characters */
SELECT round(avg(height_m),2) as average_height
FROM marvels;

/* selecting the names, gender and hometown of all marvel characters */
SELECT name, gender, hometown
FROM marvels;

/* selecting name, intelligence, strength, speed, durability, energy_Projection, fighting_Skills of all marvel characters */
SELECT name, intelligence, strength, speed, durability, energy_Projection, fighting_Skills
FROM marvels;

/* selecting name, intelligence, strength, speed, durability, energy_Projection, fighting_Skills of all marvel characters based on the male gender*/
SELECT name, intelligence, strength, speed, durability, energy_Projection, fighting_Skills
FROM marvels
WHERE gender = "Male";

/* selecting name, intelligence, strength, speed, durability, energy_Projection, fighting_Skills of all marvel characters based on the female gender*/
SELECT name, intelligence, strength, speed, durability, energy_Projection, fighting_Skills
FROM marvels
WHERE gender = "Female";

/*selecting hometowns with number of characters of one or more*/
SELECT hometown, count(name) as number_of_characters
FROM marvels
GROUP BY hometown
HAVING number_of_characters >= 1;

/* selecting the name and gender of all marvel characters */
SELECT name, gender
FROM marvels
ORDER BY gender;

/*selecting name, gender, strength of all marvel characters based on the male gender */
SELECT name, gender, strength
FROM marvels
WHERE gender = "Male"
ORDER BY strength DESC;

/*selecting name, gender, strength of all marvel characters based on the female gender */
SELECT name, gender, strength
FROM marvels
WHERE gender = "Female"
ORDER BY strength DESC;

/*selecting name, gender, intelligence of all marvel characters based on the male gender */
SELECT name, gender, intelligence
FROM marvels
WHERE gender = "Male"
ORDER BY intelligence DESC;

/*selecting name, gender, intelligence of all marvel characters based on the female gender */
SELECT name, gender, intelligence
FROM marvels
WHERE gender = "Female"
ORDER BY intelligence DESC;

/*selecting name, gender, speed of all marvel characters based on the male gender */
SELECT name, gender, speed
FROM marvels
WHERE gender = "Male"
ORDER BY speed DESC;

/*selecting name, gender, speed of all marvel characters based on the female gender */
SELECT name, gender, speed
FROM marvels
WHERE gender = "Female"
ORDER BY speed DESC;

/*selecting name, gender, durability of all marvel characters based on the male gender */
SELECT name, gender, durability
FROM marvels
WHERE gender = "Male"
ORDER BY durability DESC;

/*selecting name, gender, durability of all marvel characters based on the female gender */
SELECT name, gender, durability
FROM marvels
WHERE gender = "Female"
ORDER BY durability DESC;

/*selecting name, gender, energy_projection of all marvel characters based on the male gender */
SELECT name, gender, energy_Projection
FROM marvels
WHERE gender = "Male"
ORDER BY energy_Projection DESC;

/*selecting name, gender, energy_projection of all marvel characters based on the female gender */
SELECT name, gender, energy_Projection
FROM marvels
WHERE gender = "Female"
ORDER BY energy_Projection DESC;

/*selecting name, gender, fighting_skills of all marvel characters based on the male gender */
SELECT name, gender, fighting_Skills
FROM marvels
WHERE gender = "Male"
ORDER BY fighting_Skills DESC;

/*selecting name, gender, fighting_skills of all marvel characters based on the female gender */
SELECT name, gender, fighting_Skills
FROM marvels
WHERE gender = "Female"
ORDER BY fighting_Skills DESC;

/*selecting name, hometown of all marvel characters with speed or fighting skills greater than 3 */
SELECT name, hometown
FROM marvels
WHERE speed > 3
OR fighting_skills > 3;

/*selecting name, hometown of all marvel characters with durability and strength greater than 3 */
SELECT id, name, hometown
FROM marvels
WHERE durability > 3
AND strength > 3;

/* selecting name, alignment of all marvel characters */
SELECT name, alignment
FROM marvels
WHERE alignment IN ("Bad", "Neutral", "Good");

/* selecting name, hometown, popularity of marvel characters coming from hometowns usa and eua */
SELECT name, hometown, popularity
FROM marvels
WHERE hometown IN ("USA", "EUA")
ORDER BY popularity DESC;

/* selecting the average popularity of all marvel characters */
SELECT round(avg(popularity),2) as Average_popularity
FROM marvels;

/* selecting name, alignment, popularity of all marvel characters based on popularity */
SELECT name, alignment, popularity,
CASE 
WHEN popularity > 60 THEN "Famous"
WHEN popularity > 20 THEN "Popular"
ELSE "Normal"
END AS "Popularity Status"
FROM marvels
ORDER BY popularity DESC;


