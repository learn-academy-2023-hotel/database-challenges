-- What is the population of the US? (HINT: 278357000)

select population, name
from country
where name like 'United States'


-- What is the area of the US? (HINT: 9.36352e+06)

select surfacearea
from country
where name like 'United States'

-- Which countries gained their independence before 1963?

select name, continent, indepyear
from country
Where indepyear  < 1963

-- List the countries in Africa that have a population smaller than 30,000,000 and a life expectancy of more than 45? (HINT: 37 entries)

SELECT name, continent, population
FROM country
WHERE continent = 'Africa' 
AND  population < 30000000
AND lifeexpectancy > 45


-- Which countries are something like a republic? (HINT: Are there 122 or 143?)

SELECT name, continent, governmentform
FROM country
WHERE governmentform like '%Republic' 

-- Which countries are some kind of republic and achieved independence after 1945? (HINT: 92 entries)

SELECT name, continent, governmentform
FROM country
WHERE governmentform like '%Republic' 
AND indepyear > 1945

-- Which countries achieved independence after 1945 and are not some kind of republic? (HINT: 27 entries)

SELECT name, continent, governmentform
FROM country
WHERE governmentform NOT IN ('Republic', 'Federal Republic', 'Socialistic Republic', 'Islamic Republic')
AND indepyear > 1945

=== refactor ======

-- Which fifteen countries have the lowest life expectancy? (HINT: starts with Zambia, ends with Sierra Leonne)

SELECT name , lifeexpectancy
FROM country 
ORDER BY lifeexpectancy 
LIMIT 15 

-- Which fifteen countries have the highest life expectancy? (HINT: starts with Andorra, ends with Spain)

SELECT name , lifeexpectancy
FROM country 
WHERE lifeexpectancy is not null
ORDER BY lifeexpectancy DESC
LIMIT 15 

-- Which five countries have the lowest population density (density = population / surfacearea)? (HINT: starts with Greenland)



-- Which countries have the highest population density?(HINT: starts with Macao)
-- Which is the smallest country by area? (HINT: .4)
-- Which is the smallest country by population? (HINT: 50)?
-- Which is the biggest country by area? (HINT: 1.70754e+07)
-- Which is the biggest country by population? (HINT: 1277558000)
-- Who is the most influential head of state measured by population? (HINT: Jiang Zemin)
-- Of the countries with the top 10 gnp, which has the smallest population? (HINT: Canada)
-- Of the 10 least populated countries with permanent residents (a non-zero population), which has the largest surfacearea? (HINT: Svalbard and Jan Mayen)
-- Which region has the highest average gnp? (HINT: North America)
-- Who is the most influential head of state measured by surface area? (HINT: Elisabeth II)
-- What is the average life expectancy for all continents?
-- What are the most common forms of government? (HINT: use count(*))
-- How many countries are in North America?
-- What is the total population of all continents?