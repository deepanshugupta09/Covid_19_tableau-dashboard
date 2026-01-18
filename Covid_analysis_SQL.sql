-- Create table covid deaths
CREATE TABLE covid_deaths_new (
    iso_code VARCHAR,
    continent VARCHAR,
    location VARCHAR,
    date DATE,

    population VARCHAR,
    total_cases VARCHAR,
    new_cases VARCHAR,
    new_cases_smoothed VARCHAR,

    total_deaths VARCHAR,
    new_deaths VARCHAR,
    new_deaths_smoothed VARCHAR,

    total_cases_per_million VARCHAR,
    new_cases_per_million VARCHAR,
    new_cases_smoothed_per_million VARCHAR,

    total_deaths_per_million VARCHAR,
    new_deaths_per_million VARCHAR,
    new_deaths_smoothed_per_million VARCHAR,

    reproduction_rate VARCHAR,

    icu_patients VARCHAR,
    icu_patients_per_million VARCHAR,

    hosp_patients VARCHAR,
    hosp_patients_per_million VARCHAR,

    weekly_icu_admissions VARCHAR,
    weekly_icu_admissions_per_million VARCHAR,

    weekly_hosp_admissions VARCHAR,
    weekly_hosp_admissions_per_million VARCHAR
);

-- Clean data by trimming extra spaces and converting empty strings to NULL
-- Step: Convert VARCHAR columns to NUMERIC/BIGINT

ALTER TABLE covid_deaths
ALTER COLUMN population TYPE BIGINT USING NULLIF(population, '')::BIGINT,
ALTER COLUMN total_cases TYPE NUMERIC USING NULLIF(total_cases, '')::NUMERIC,
ALTER COLUMN new_cases TYPE NUMERIC USING NULLIF(new_cases, '')::NUMERIC,
ALTER COLUMN new_cases_smoothed TYPE NUMERIC USING NULLIF(new_cases_smoothed, '')::NUMERIC,
ALTER COLUMN total_deaths TYPE NUMERIC USING NULLIF(total_deaths, '')::NUMERIC,
ALTER COLUMN new_deaths TYPE NUMERIC USING NULLIF(new_deaths, '')::NUMERIC,
ALTER COLUMN new_deaths_smoothed TYPE NUMERIC USING NULLIF(new_deaths_smoothed, '')::NUMERIC,
ALTER COLUMN total_cases_per_million TYPE NUMERIC USING NULLIF(total_cases_per_million, '')::NUMERIC,
ALTER COLUMN new_cases_per_million TYPE NUMERIC USING NULLIF(new_cases_per_million, '')::NUMERIC,
ALTER COLUMN new_cases_smoothed_per_million TYPE NUMERIC USING NULLIF(new_cases_smoothed_per_million, '')::NUMERIC,
ALTER COLUMN total_deaths_per_million TYPE NUMERIC USING NULLIF(total_deaths_per_million, '')::NUMERIC,
ALTER COLUMN new_deaths_per_million TYPE NUMERIC USING NULLIF(new_deaths_per_million, '')::NUMERIC,
ALTER COLUMN new_deaths_smoothed_per_million TYPE NUMERIC USING NULLIF(new_deaths_smoothed_per_million, '')::NUMERIC,
ALTER COLUMN reproduction_rate TYPE NUMERIC USING NULLIF(reproduction_rate, '')::NUMERIC,
ALTER COLUMN icu_patients TYPE NUMERIC USING NULLIF(icu_patients, '')::NUMERIC,
ALTER COLUMN icu_patients_per_million TYPE NUMERIC USING NULLIF(icu_patients_per_million, '')::NUMERIC,
ALTER COLUMN hosp_patients TYPE NUMERIC USING NULLIF(hosp_patients, '')::NUMERIC,
ALTER COLUMN hosp_patients_per_million TYPE NUMERIC USING NULLIF(hosp_patients_per_million, '')::NUMERIC,
ALTER COLUMN weekly_icu_admissions TYPE NUMERIC USING NULLIF(weekly_icu_admissions, '')::NUMERIC,
ALTER COLUMN weekly_icu_admissions_per_million TYPE NUMERIC USING NULLIF(weekly_icu_admissions_per_million, '')::NUMERIC,
ALTER COLUMN weekly_hosp_admissions TYPE NUMERIC USING NULLIF(weekly_hosp_admissions, '')::NUMERIC,
ALTER COLUMN weekly_hosp_admissions_per_million TYPE NUMERIC USING NULLIF(weekly_hosp_admissions_per_million, '')::NUMERIC;
SELECT * FROM covid_tests_vaccinations1;

-- Create table covid vaccinations

CREATE TABLE covid_tests_vaccinations1 (
    iso_code VARCHAR,
    continent VARCHAR,
    location VARCHAR,
    date DATE,

    new_tests VARCHAR,
    total_tests VARCHAR,
    total_tests_per_thousand VARCHAR,
    new_tests_per_thousand VARCHAR,
    new_tests_smoothed VARCHAR,
    new_tests_smoothed_per_thousand VARCHAR,
    positive_rate VARCHAR,
    tests_per_case VARCHAR,
    tests_units VARCHAR,
    
    total_vaccinations VARCHAR,
    people_vaccinated VARCHAR,
    people_fully_vaccinated VARCHAR,
    new_vaccinations VARCHAR,
    new_vaccinations_smoothed VARCHAR,
    total_vaccinations_per_hundred VARCHAR,
    people_vaccinated_per_hundred VARCHAR,
    people_fully_vaccinated_per_hundred VARCHAR,
    new_vaccinations_smoothed_per_million VARCHAR,
    
    stringency_index VARCHAR,
    population_density VARCHAR,
    median_age VARCHAR,
    aged_65_older VARCHAR,
    aged_70_older VARCHAR,
    gdp_per_capita VARCHAR,
    extreme_poverty VARCHAR,
    cardiovasc_death_rate VARCHAR,
    diabetes_prevalence VARCHAR,
    female_smokers VARCHAR,
    male_smokers VARCHAR,
    handwashing_facilities VARCHAR,
    hospital_beds_per_thousand VARCHAR,
    life_expectancy VARCHAR,
    human_development_index VARCHAR
);

-- Clean data by trimming extra spaces and converting empty strings to NULL
-- Step: Convert VARCHAR columns to NUMERIC/BIGINT

ALTER TABLE covid_tests_vaccinations1
ALTER COLUMN new_tests TYPE NUMERIC USING NULLIF(new_tests, '')::NUMERIC,
ALTER COLUMN total_tests TYPE NUMERIC USING NULLIF(total_tests, '')::NUMERIC,
ALTER COLUMN total_tests_per_thousand TYPE NUMERIC USING NULLIF(total_tests_per_thousand, '')::NUMERIC,
ALTER COLUMN new_tests_per_thousand TYPE NUMERIC USING NULLIF(new_tests_per_thousand, '')::NUMERIC,
ALTER COLUMN new_tests_smoothed TYPE NUMERIC USING NULLIF(new_tests_smoothed, '')::NUMERIC,
ALTER COLUMN new_tests_smoothed_per_thousand TYPE NUMERIC USING NULLIF(new_tests_smoothed_per_thousand, '')::NUMERIC,
ALTER COLUMN positive_rate TYPE NUMERIC USING NULLIF(positive_rate, '')::NUMERIC,
ALTER COLUMN tests_per_case TYPE NUMERIC USING NULLIF(tests_per_case, '')::NUMERIC,
ALTER COLUMN total_vaccinations TYPE NUMERIC USING NULLIF(total_vaccinations, '')::NUMERIC,
ALTER COLUMN people_vaccinated TYPE NUMERIC USING NULLIF(people_vaccinated, '')::NUMERIC,
ALTER COLUMN people_fully_vaccinated TYPE NUMERIC USING NULLIF(people_fully_vaccinated, '')::NUMERIC,
ALTER COLUMN new_vaccinations TYPE NUMERIC USING NULLIF(new_vaccinations, '')::NUMERIC,
ALTER COLUMN new_vaccinations_smoothed TYPE NUMERIC USING NULLIF(new_vaccinations_smoothed, '')::NUMERIC,
ALTER COLUMN total_vaccinations_per_hundred TYPE NUMERIC USING NULLIF(total_vaccinations_per_hundred, '')::NUMERIC,
ALTER COLUMN people_vaccinated_per_hundred TYPE NUMERIC USING NULLIF(people_vaccinated_per_hundred, '')::NUMERIC,
ALTER COLUMN people_fully_vaccinated_per_hundred TYPE NUMERIC USING NULLIF(people_fully_vaccinated_per_hundred, '')::NUMERIC,
ALTER COLUMN new_vaccinations_smoothed_per_million TYPE NUMERIC USING NULLIF(new_vaccinations_smoothed_per_million, '')::NUMERIC,
ALTER COLUMN stringency_index TYPE NUMERIC USING NULLIF(stringency_index, '')::NUMERIC,
ALTER COLUMN population_density TYPE NUMERIC USING NULLIF(population_density, '')::NUMERIC,
ALTER COLUMN median_age TYPE NUMERIC USING NULLIF(median_age, '')::NUMERIC,
ALTER COLUMN aged_65_older TYPE NUMERIC USING NULLIF(aged_65_older, '')::NUMERIC,
ALTER COLUMN aged_70_older TYPE NUMERIC USING NULLIF(aged_70_older, '')::NUMERIC,
ALTER COLUMN gdp_per_capita TYPE NUMERIC USING NULLIF(gdp_per_capita, '')::NUMERIC,
ALTER COLUMN extreme_poverty TYPE NUMERIC USING NULLIF(extreme_poverty, '')::NUMERIC,
ALTER COLUMN cardiovasc_death_rate TYPE NUMERIC USING NULLIF(cardiovasc_death_rate, '')::NUMERIC,
ALTER COLUMN diabetes_prevalence TYPE NUMERIC USING NULLIF(diabetes_prevalence, '')::NUMERIC,
ALTER COLUMN female_smokers TYPE NUMERIC USING NULLIF(female_smokers, '')::NUMERIC,
ALTER COLUMN male_smokers TYPE NUMERIC USING NULLIF(male_smokers, '')::NUMERIC,
ALTER COLUMN handwashing_facilities TYPE NUMERIC USING NULLIF(handwashing_facilities, '')::NUMERIC,
ALTER COLUMN hospital_beds_per_thousand TYPE NUMERIC USING NULLIF(hospital_beds_per_thousand, '')::NUMERIC,
ALTER COLUMN life_expectancy TYPE NUMERIC USING NULLIF(life_expectancy, '')::NUMERIC,
ALTER COLUMN human_development_index TYPE NUMERIC USING NULLIF(human_development_index, '')::NUMERIC;


-- Looking For Total_Cases Vs Total_deaths

SELECT
	LOCATION,
	DATE,
	TOTAL_CASES,
	TOTAL_DEATHS,
	(TOTAL_DEATHS / TOTAL_CASES) * 100 AS DEATH_PERCENTAGE
FROM
	COVID_DEATHS
WHERE
	LOCATION = 'India';

-- Looking At Total_Cases Vs Total_Population
-- Shows What Percentage Of Population Get Covid

SELECT
	LOCATION,
	DATE,
	TOTAL_CASES,
	POPULATION,
	(TOTAL_CASES / POPULATION) * 100 AS PERCENTAGE_INFECTED_POPULATION
FROM
	COVID_DEATHS
WHERE
	LOCATION = 'India';

-- Looking  At Countries With Highest Infection Rate Compared To Population.

SELECT
	LOCATION,
	POPULATION,
	MAX(TOTAL_CASES) AS HIGHEST_INFECTION_COUNT,
	MAX((TOTAL_CASES / POPULATION) * 100) AS PERCENTAGE_POPULATION_INFECTED
FROM
	COVID_DEATHS
GROUP BY
	LOCATION,
	POPULATION
ORDER BY
	PERCENTAGE_POPULATION_INFECTED DESC;

-- Showing Countries With Highest Death Count Per Population

SELECT
	LOCATION,
	MAX(TOTAL_DEATHS::INT) AS TOTAL_DEATH_COUNT
FROM
	COVID_DEATHS
WHERE
	CONTINENT IS NOT NULL
	AND TOTAL_DEATHS IS NOT NULL
GROUP BY
	LOCATION
ORDER BY
	TOTAL_DEATH_COUNT DESC;

-- Let's Break Things Down By Continent

SELECT
	LOCATION,
	MAX(TOTAL_DEATHS::INT) AS TOTAL_DEATH_COUNT
FROM
	COVID_DEATHS
WHERE
	CONTINENT IS NULL
	AND TOTAL_DEATHS IS NOT NULL
GROUP BY
	LOCATION
ORDER BY
	TOTAL_DEATH_COUNT DESC;

-- Showing Contintents with the highest deaths count per population

SELECT
	CONTINENT,
	MAX(CAST(TOTAL_DEATHS AS INT)) AS TOTAL_DEATHS_COUNT
FROM
	COVID_DEATHS
WHERE
	CONTINENT IS NOT NULL
GROUP BY
	CONTINENT
ORDER BY
	TOTAL_DEATHS_COUNT DESC;

-- Global Numbers

SELECT
	LOCATION,
	DATE,
	TOTAL_CASES,
	TOTAL_DEATHS,
	(TOTAL_DEATHS / TOTAL_CASES) * 100 AS DEATHS_PERCENTAGE
FROM
	COVID_DEATHS
WHERE
	CONTINENT IS NOT NULL;

-- Global Numbers

SELECT
	SUM(NEW_CASES) AS TOTAL_CASES,
	SUM(CAST(NEW_DEATHS AS INT)) AS TOTAL_DEATHS,
	SUM(CAST(NEW_DEATHS AS INT)) / SUM(NEW_CASES) * 100 AS DEATHPERCENTAGE
FROM
	COVID_DEATHS
WHERE
	CONTINENT IS NOT NULL

--Looking total population vs vaccinations
SELECT
	CD.CONTINENT,
	CD.LOCATION,
	CD.DATE,
	CD.POPULATION,
	CV.NEW_VACCINATIONS,
	SUM(CV.NEW_VACCINATIONS) OVER (
		PARTITION BY
			CD.LOCATION
		ORDER BY
			CD.LOCATION,
			CD.DATE
	) AS ROOLINGPEOPLEVACCINATED
FROM
	COVID_DEATHS AS CD
	JOIN COVID_TESTS_VACCINATIONS1 AS CV ON CD.LOCATION = CV.LOCATION
	AND CD.DATE = CV.DATE
WHERE
	CD.CONTINENT IS NOT NULL;

-- Temp Table

CREATE TABLE percentpopulationvaccinated
(
continent varchar,
location varchar,
date date,
population numeric,
new_vaccinations numeric,
roolingpeoplevaccinated numeric
);
Insert Into percentpopulationvaccinated
SELECT
	CD.CONTINENT,
	CD.LOCATION,
	CD.DATE,
	CD.POPULATION,
	CV.NEW_VACCINATIONS,
	SUM(CV.NEW_VACCINATIONS) OVER (
		PARTITION BY
			CD.LOCATION
		ORDER BY
			CD.LOCATION,
			CD.DATE
	) AS ROOLINGPEOPLEVACCINATED
FROM
	COVID_DEATHS AS CD
	JOIN COVID_TESTS_VACCINATIONS1 AS CV ON CD.LOCATION = CV.LOCATION
	AND CD.DATE = CV.DATE
SELECT
    *,
    (roolingpeoplevaccinated / population) * 100
        AS percent_population_vaccinated
FROM percentpopulationvaccinated;

-- Creating View To Store Data For Latter Visualizations

CREATE VIEW PERCENTAGEPOPULATIONVACCINATED AS
SELECT
	CD.CONTINENT,
	CD.LOCATION,
	CD.DATE,
	CD.POPULATION,
	CV.NEW_VACCINATIONS,
	SUM(CV.NEW_VACCINATIONS) OVER (
		PARTITION BY
			CD.LOCATION
		ORDER BY
			CD.LOCATION,
			CD.DATE
	) AS ROOLINGPEOPLEVACCINATED
FROM
	COVID_DEATHS AS CD
	JOIN COVID_TESTS_VACCINATIONS1 AS CV ON CD.LOCATION = CV.LOCATION
	AND CD.DATE = CV.DATE
WHERE
	CD.CONTINENT IS NOT NULL;
