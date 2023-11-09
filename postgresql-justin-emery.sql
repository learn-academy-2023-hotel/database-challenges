-- What is the population of the US? (HINT: 278357000)

-- SELECT name, population
-- FROM country
-- WHERE name = 'United States'
-- 278357000

-- What is the area of the US? (HINT: 9.36352e+06)

-- SELECT *
-- FROM country
-- WHERE name = 'United States'
-- 9.36352e+06

-- Which countries gained their independence before 1963?

-- SELECT name, indepyear
-- FROM country
-- WHERE indepyear < 1963
-- 121

-- List the countries in Africa that have a population smaller than 30,000,000 and a life expectancy of more than 45? (HINT: 37 entries)

-- SELECT name, lifeexpectancy, population, continent
-- FROM country
-- WHERE continent = 'Africa' AND
-- population < 3e7 AND
-- lifeexpectancy > 45
-- 37

-- Which countries are something like a republic? (HINT: Are there 122 or 143?)

-- SELECT name, governmentform
-- FROM country
-- WHERE governmentform LIKE '%Republic'
-- 143

-- Which countries are some kind of republic and achieved independence after 1945? (HINT: 92 entries)

-- SELECT name, governmentform, indepyear
-- FROM country
-- WHERE governmentform LIKE '%Republic' AND
-- indepyear > 1945
-- 92

-- Which countries achieved independence after 1945 and are not some kind of republic? (HINT: 27 entries)

-- SELECT name, governmentform, indepyear
-- FROM country
-- WHERE 
-- NOT(governmentform LIKE '%Republic')
-- AND indepyear > 1945
-- 27

-- Which fifteen countries have the lowest life expectancy? (HINT: starts with Zambia, ends with Sierra Leonne)

-- SELECT name, lifeexpectancy
-- FROM country
-- WHERE lifeexpectancy > 0
-- ORDER BY lifeexpectancy ASC
-- LIMIT 15

-- Which fifteen countries have the highest life expectancy? (HINT: starts with Andorra, ends with Spain)

-- SELECT name, lifeexpectancy, continent
-- FROM country
-- WHERE lifeexpectancy > 0
-- ORDER BY lifeexpectancy DESC
-- LIMIT 15

-- Which five countries have the lowest population density (density = population / surfacearea)? (HINT: starts with Greenland)

-- SELECT name, population, surfacearea,
-- population / surfacearea AS density
-- FROM country
-- WHERE population > 0
-- ORDER BY density ASC
-- LIMIT 5

-- Which countries have the highest population density?(HINT: starts with Macao)

-- SELECT name, population, surfacearea,
-- population / surfacearea AS density
-- FROM country
-- WHERE population > 0
-- ORDER BY density DESC
-- LIMIT 5

-- Which is the smallest country by area? (HINT: .4)

-- SELECT name, surfacearea
-- FROM country
-- WHERE population > 0
-- ORDER BY surfacearea ASC
-- LIMIT 1
-- Vatican City

-- Which is the smallest country by population? (HINT: 50)?

-- SELECT name, population
-- FROM country
-- WHERE population > 0
-- ORDER BY population ASC
-- LIMIT 1

-- Pitcairn

-- Which is the biggest country by area? (HINT: 1.70754e+07)

-- SELECT name, surfacearea
-- FROM country
-- WHERE population > 0
-- ORDER BY surfacearea DESC
-- LIMIT 1

-- Russian Federation

-- Which is the biggest country by population? (HINT: 1277558000)

-- SELECT name, population
-- FROM country
-- WHERE population > 0
-- ORDER BY population DESC
-- LIMIT 1

-- China

-- Who is the most influential head of state measured by population? (HINT: Jiang Zemin)

-- SELECT name, headofstate, population
-- FROM country
-- WHERE population > 0
-- ORDER BY population DESC
-- LIMIT 1
-- Jiang Zemin

-- Of the countries with the top 10 gnp, which has the smallest population? (HINT: Canada)

-- WITH populated_countries AS (
-- 	SELECT name, population, gnp
--  	FROM country
--  	ORDER BY gnp DESC
-- 	LIMIT 10
-- )
-- SELECT name, population, gnp
-- FROM populated_countries
-- ORDER BY population ASC
-- LIMIT 1;

-- Canada

-- Of the 10 least populated countries with permanent residents (a non-zero population), which has the largest surfacearea? (HINT: Svalbard and Jan Mayen)

-- WITH populated_countries AS (
-- 	SELECT name, population, surfacearea
--  	FROM country
-- 	WHERE population > 0
--  	ORDER BY population ASC
-- 	LIMIT 10
-- )
-- SELECT name, population, surfacearea
-- FROM populated_countries
-- ORDER BY surfacearea DESC
-- LIMIT 1;
-- Svalbard and Jan Mayen

-- Which region has the highest average gnp? (HINT: North America)

-- SELECT region, AVG(gnp) AS avg_gnp
-- FROM country
-- GROUP BY region
-- ORDER BY avg_gnp DESC
-- LIMIT 1
-- North America

-- Who is the most influential head of state measured by surface area? (HINT: Elisabeth II)

-- SELECT SUM(surfacearea), headofstate
-- FROM country
-- GROUP BY headofstate
-- ORDER BY SUM(surfacearea) DESC
-- LIMIT 1
-- Elisabeth II

-- What is the average life expectancy for all continents?

-- SELECT continent, AVG(lifeexpectancy) AS avg_life
-- FROM country
-- GROUP BY continent
-- ORDER BY avg_life DESC

-- "Antarctica"	[null]
-- "Europe"	75.14772761951794
-- "North America"	72.99189170631203
-- "South America"	70.94615320058969
-- "Oceania"	69.71500053405762
-- "Asia"	67.44117676978017
-- "Africa"	52.57192966394257

-- What are the most common forms of government? (HINT: use count(*))

-- SELECT governmentform, COUNT(*)
-- FROM country
-- GROUP BY governmentform
-- ORDER BY count DESC

-- 1. Republic: 122
-- 2. Constitutional Monarchy: 29
-- 3. Federal Republic: 15
-- 4. Dependent Territory of the UK: 12


-- How many countries are in North America?

-- SELECT continent, COUNT(*)
-- FROM country
-- WHERE continent='North America'
-- GROUP BY continent
-- 37

-- What is the total population of all continents?

-- SELECT continent, SUM(population)
-- FROM country
-- GROUP BY continent

-- "Asia"	3705025700
-- "South America"	345780000
-- "North America"	482993000
-- "Oceania"	30401150
-- "Antarctica"	0
-- "Africa"	784475000
-- "Europe"	730074600