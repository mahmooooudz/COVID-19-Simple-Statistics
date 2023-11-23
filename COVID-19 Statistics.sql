
--////////////////////////////////////////////////////
--Select data that we are going to be using:
--SELECT 
	--location, 
	--date, 
	--total_cases, 
	--new_cases, 
	--total_deaths, 
	--population
--From 
	--PortofolioProject..CovidDeath
--Where 
	--continent IS NOT NULL
--order by 
	--1,2
--//////////////////////////////////////////////////////////////////////////////////////////







--//////////////////////////////////////////////////////////////////////////////////////////
--Looking at Total Cases VS Total Deaths
--SELECT
--    location,
--    date,
--    total_cases,
--    total_deaths,
--    (CONVERT(float, total_deaths) / CONVERT(float, total_cases)) * 100 AS DeathPercentage
--FROM
--    PortofolioProject..CovidDeath
--Where 
	--continent IS NOT NULL
--ORDER BY
--    1, 2
--//////////////////////////////////////////////////////////////////////////////////////////





--//////////////////////////////////////////////////////////////////////////////////////////
--Looking at Total Cases VS Total Deaths
--SELECT
--    location,
--    date,
--    total_cases,
--    total_deaths,
--    (CONVERT(float, total_deaths) / CONVERT(float, total_cases)) * 100 AS DeathPercentage
--FROM
--    PortofolioProject..CovidDeath
--Where 
	--continent IS NOT NULL
--ORDER BY
--    1, 2
--//////////////////////////////////////////////////////////////////////////////////////////







--//////////////////////////////////////////////////////////////////////////////////////////
-- Shows the percentage of population got COVID-19
--SELECT
--    location,
--    date,
--    total_cases,
--    total_deaths,
--    (CONVERT(float, total_deaths) / CONVERT(float, population)) * 100 AS PercentagePopulationInfected
--FROM
--    PortofolioProject..CovidDeath
--Where 
	--continent IS NOT NULL
--ORDER BY
--    1, 2
--//////////////////////////////////////////////////////////////////////////////////////////




--//////////////////////////////////////////////////////////////////////////////////////////
--Looking for countries with highest infection rate compared to population
--SELECT
--    location,
--    population,
--    MAX(total_deaths) AS HighestInfectionCount,
--    MAX((CONVERT(float, total_cases) / CONVERT(float, population)) * 100) AS PercentagePopulationInfected
--FROM
--    PortofolioProject..CovidDeath
--GROUP BY
--	location, population
--Where 
	--continent IS NOT NULL
--ORDER BY
--    PercentagePopulationInfected desc
--//////////////////////////////////////////////////////////////////////////////////////////





--//////////////////////////////////////////////////////////////////////////////////////////
--Looking for countries with highest death rate compared to population
--SELECT
--    location,
--    population,
--    MAX(total_deaths) AS HighestInfectionCount,
--    MAX((CONVERT(float, total_deaths) / CONVERT(float, population)) * 100) AS PercentagePopulationDied
--FROM
--    PortofolioProject..CovidDeath
--GROUP BY
--	location, population
--WHERE
--	continent IS NOT NULL
--ORDER BY
--    PercentagePopulationDied desc
--//////////////////////////////////////////////////////////////////////////////////////////





--//////////////////////////////////////////////////////////////////////////////////////////
--Looking for countries with highest death count
--SELECT
--    location,
--    MAX(total_deaths) AS TotalDeathCount
--FROM
--    PortofolioProject..CovidDeath
--Where
--	continent IS NOT NULL
--GROUP BY
--	location
--ORDER BY
--    TotalDeathCount desc
--//////////////////////////////////////////////////////////////////////////////////////////




--//////////////////////////////////////////////////////////////////////////////////////////
--///////////////-------<< LET'S TAKE THINGS DOWN BY CONTINENT >>-------///////////////////
--//////////////////////////////////////////////////////////////////////////////////////////




--//////////////////////////////////////////////////////////////////////////////////////////
--Looking for countries with highest death count
--SELECT
--    continent,
--    MAX(cast(total_deaths AS int)) AS TotalDeathCount
--FROM
--    PortofolioProject..CovidDeath
--Where
--	continent IS NOT NULL
--GROUP BY
--	continent
--ORDER BY
--    TotalDeathCount desc
--//////////////////////////////////////////////////////////////////////////////////////////