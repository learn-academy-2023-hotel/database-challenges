-- 1. What is the population of the US? (HINT: 278357000)
-- SELECT  name, population
-- FROM country
-- WHERE name = 'United States'

-- 2. What is the area of the US? (HINT: 9.36352e+06)
-- SELECT  name, surfacearea
-- FROM country
-- WHERE name = 'United States'

-- 3. Which countries gained their independence before 1963?
-- SELECT name, indepyear
-- FROM country
-- WHERE indepyear < 1963

-- 4. List the countries in Africa that have a population smaller than 30,000,000 and a life expectancy of more than 45? (HINT: 37 entries)
-- SELECT name, population, lifeexpectancy, continent
-- FROM country
-- WHERE continent = 'Africa'
-- AND population < 30000000
-- AND lifeexpectancy > 45

--5. Which countries are something like a republic? (HINT: Are there 122 or 143?)
-- SELECT * 
-- FROM country
-- WHERE governmentform
-- LIKE '%Republic'

-- 6. Which countries are some kind of republic and achieved independence after 1945? (HINT: 92 entries)
-- SELECT * 
-- FROM country
-- WHERE governmentform
-- LIKE '%Republic'
-- AND indepyear > 1945

-- 7. Which countries achieved independence after 1945 and are not some kind of republic? (HINT: 27 entries)
-- WITH populated_countries AS (
-- 	SELECT * 
-- 	FROM country
-- 	WHERE indepyear > 1945
	
-- )

-- SELECT *
-- FROM populated_countries
-- WHERE governmentform
-- NOT LIKE '%Republic'

-- 8. Which fifteen countries have the lowest life expectancy? (HINT: starts with Zambia, ends with Sierra Leonne)
-- SELECT *
-- FROM country
-- WHERE lifeexpectancy IS NOT NULL
-- ORDER BY lifeexpectancy ASC 
-- LIMIT 15

-- 9. Which fifteen countries have the highest life expectancy? (HINT: starts with Andorra, ends with Spain) 
-- SELECT *
-- FROM country
-- WHERE lifeexpectancy IS NOT NULL
-- ORDER BY lifeexpectancy DESC
-- LIMIT 15

-- 10. Which five countries have the lowest population density (density = population / surfacearea)? (HINT: starts with Greenland)
-- SELECT name, population, surfacearea
-- FROM country
-- WHERE population > 0
-- ORDER BY (population/surfacearea) ASC
-- LIMIT 5

--11. Which countries have the highest population density?(HINT: starts with Macao)
-- SELECT name, population, surfacearea
-- FROM country
-- WHERE population > 0
-- ORDER BY (population/surfacearea) DESC
-- LIMIT 5

-- 12. Which is the smallest country by area? (HINT: .4)
-- SELECT name, surfacearea
-- FROM country
-- ORDER BY surfacearea ASC
-- LIMIT 1

-- 13. Which is the smallest country by population? (HINT: 50)?
-- SELECT name, population
-- FROM country
-- WHERE population > 0
-- ORDER BY population ASC
-- LIMIT 1

-- 14. Which is the biggest country by area? (HINT: 1.70754e+07)
-- SELECT name, surfacearea
-- FROM country
-- ORDER BY surfacearea DESC
-- LIMIT 1


-- 15. Which is the biggest country by population? (HINT: 1277558000)
-- SELECT name, population
-- FROM country
-- ORDER BY population  DESC
-- LIMIT 1


-- 16. Who is the most influential head of state measured by population? (HINT: Jiang Zemin)
-- SELECT name, headofstate, population 
-- FROM country
-- ORDER BY population DESC
-- LIMIT 1


-- 17. Of the countries with the top 10 gnp, which has the smallest population? (HINT: Canada)
-- WITH populated_countries AS(
-- 	SELECT name, gnp, population 
-- 	FROM country
-- 	WHERE GNP > 0
-- 	ORDER BY GNP DESC
-- 	LIMIT 10

-- )

-- SELECT name, gnp, population 
-- FROM populated_countries
-- ORDER BY population ASC
-- LIMIT 1


-- 18. Of the 10 least populated countries with permanent residents (a non-zero population), which has the largest surfacearea? (HINT: Svalbard and Jan Mayen)
-- WITH populated_countries AS(
-- 	SELECT name, surfacearea, population 
-- 	FROM country
-- 	WHERE population > 0
-- 	ORDER BY population ASC
-- 	LIMIT 10

-- )

-- SELECT name, surfacearea, population 
-- FROM populated_countries
-- ORDER BY surfacearea DESC
-- LIMIT 1



-- 19. Which region has the highest average gnp? (HINT: North America)
-- SELECT region, AVG(gnp)
-- FROM country
-- GROUP BY region
-- ORDER BY AVG(gnp) DESC

-- 20. Who is the most influential head of state measured by surface area? (HINT: Elisabeth II)



-- What is the average life expectancy for all continents?
-- What are the most common forms of government? (HINT: use count(*))
-- How many countries are in North America?
-- What is the total population of all continents?
