SELECT * 
FROM country 



-- What is the population of the US? (HINT: 278357000)
SELECT name, population 
FROM country 
WHERE name ='United States'
278357000

-- What is the area of the US?
SELECT name, population, surfacearea 
FROM country 
WHERE name ='United States'
9.36352e+06

-- Which countries gained their independence before 1963?
SELECT name, indepyear
FROM country 
WHERE indepyear < 1963

-- List the countries in Africa that have a population smaller than 30,000,000 and a life expectancy of more than 45? (HINT: 37 entries)
SELECT name, continent, population, lifeexpectancy
FROM country 
WHERE continent = 'Africa'
AND population < 3e7
AND lifeexpectancy > 45

-- Which countries are something like a republic? (HINT: Are there 122 or 143?)
SELECT name, governmentform 
FROM country 
WHERE governmentform 
LIKE '%Republic'

-- Which countries are some kind of republic and achieved independence after 1945? (HINT: 92 entries)
SELECT name, governmentform 
FROM country 
WHERE governmentform LIKE '%Republic'
AND indepyear >1945

-- Which countries achieved independence after 1945 and are not some kind of republic? (HINT: 27 entries)
SELECT name, governmentform, indepyear 
FROM country 
WHERE 
NOT (governmentform LIKE '%Republic')
AND indepyear >1945

-- Which fifteen countries have the lowest life expectancy? (HINT: starts with Zambia, ends with Sierra Leonne)
SELECT name,lifeexpectancy
FROM country 
ORDER BY lifeexpectancy ASC
LIMIT 15

-- Which fifteen countries have the highest life expectancy? (HINT: starts with Andorra, ends with Spain)
SELECT name,lifeexpectancy
FROM country 
WHERE lifeexpectancy IS NOT NULL 
ORDER BY lifeexpectancy DESC
LIMIT 15

-- Which five countries have the lowest population density (density = population / surfacearea)? (HINT: starts with Greenland)