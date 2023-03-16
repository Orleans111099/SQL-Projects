/* Group Five */
/* 
Samuel Tetteh Ayer
Godfred Selasi Bedzra
Edna Kissinna Chanase
Oscar Adjei Boadi Appiah
Huldah Dzifa Orleans Kpodoh
*/

/* Queries for NBA_PLAYERS Table */
/* Selecting all columns in the table */ 
SELECT *
FROM players;

/* selecting players with height below 6'3 or weight below 216 */
SELECT player, height, weight
FROM players
WHERE height < "6'3"
OR weight < 216;

/* selecting and grouping the number of players drafted by top 5 predraft teams */
SELECT predraft_team, count(DISTINCT(player)) AS number_of_drafted_players
FROM players
GROUP BY predraft_team
ORDER BY number_of_drafted_players DESC
LIMIT 5;


/*selecting players in the 2019-2020 season having their ages above 30*/
SELECT DISTINCT(team), player AS experienced_players
FROM players
WHERE season = "2019-2020"
AND age > 30;

/*selecting players in teams that have played for more than 10 seasons or less than 30 years of age*/
SELECT DISTINCT(team), player AS experienced_players
FROM players
WHERE seasons_in_league > 10
OR age < 30;

/*selecting the minimum weight of players*/
SELECT MIN(weight) AS minimum_weight
FROM players;

/*selecting the minimum height of players*/
SELECT MIN(height) AS minimum_height
FROM players;

/*selecting the maximum age of players*/
SELECT max(age)
FROM players;

/*selecting the minimum age of players*/
SELECT min(age)
FROM players;

/*selecting the average age of players*/
SELECT avg(age)
FROM players;

/*selecting and counting the number of predraft teams*/
SELECT count(DISTINCT(predraft_team))
FROM players;

/*selecting the number of players in every position*/
SELECT position, count(DISTINCT(player)) AS number_of_players
FROM players
GROUP BY position
ORDER BY number_of_players DESC;

/*selecting the average height of players*/
SELECT ROUND(AVG(height),2) AS average_height
FROM players;

/*selecting the average weight of players*/
SELECT ROUND(AVG(weight),2) AS average_weight
FROM players;

/*selecting maximum height of players*/
SELECT MAX(height) AS "maximum_height(ft_in)"
FROM players;

/*selecting the maximum weight of players */
SELECT MAX(weight) AS "maximum_weight(lbs)"
FROM players;

/*selecting maximum seasons in league */
SELECT max(seasons_in_league) AS "highest number of seasons in league"
FROM players;

/*selecting and counting number of players per season_short*/
SELECT season_short, count(player) AS number_of_players
FROM players
GROUP BY season_short
ORDER BY number_of_players DESC; 

/*selecting predraft teams with number of players more that 5*/
SELECT predraft_team, count(DISTINCT (player)) AS number_of_players
FROM players
GROUP BY predraft_team
HAVING number_of_players > 5
ORDER BY number_of_players DESC;

/*selecting players to know their height range in centimeters*/
SELECT player, height_cm,
CASE
WHEN height_cm < 198 THEN "below average"
WHEN height_cm = 198 THEN "average"
ELSE "above average"
END as "height_range"
FROM players;

