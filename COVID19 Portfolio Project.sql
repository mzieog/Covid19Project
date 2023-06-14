SELECT *
FROM [COVID-19Project]..CovidDeaths
ORDER BY 3,4

--SELECT *
--FROM [COVID-19Project]..CovidVaccinations
--ORDER BY 3,4

-- SELECT Data which is to be explored

SELECT location, date, total_cases, new_cases, total_deaths, population
FROM [COVID-19Project]..CovidDeaths
ORDER BY 1,2

----------------------------------------------------------------------------------------------------------------------------------
--LOOKING AT TOTAL_CASES VS TOTAL_DEATHS
--Showing likelihood of dying if you contract Covid-19

SELECT location, date, total_cases, total_deaths, (total_deaths/total_cases)*100 as DeathPercentage
FROM [COVID-19Project]..CovidDeaths
WHERE location LIKE '%states%'
ORDER BY 1,2


----------------------------------------------------------------------------------------------------------------------------------
--LOOKING AT TOTAL_CASES VS POPULATION
-- Showing percentage of Population that has Covid-19

SELECT location, date, total_cases, population, (total_cases/population)*100 
FROM [COVID-19Project]..CovidDeaths
WHERE location LIKE '%states%'
ORDER BY 1,2
