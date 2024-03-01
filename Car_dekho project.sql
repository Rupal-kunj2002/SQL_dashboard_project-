CREATE SCHEMA cars;
USE cars;
-- (a) READ CARS DATA --
SELECT * FROM car_dekho;

-- (b) Total Cars: To get a count of total records --
SELECT COUNT(Name) FROM car_dekho;

-- (c) How many cars available in 2023? --
SELECT year,COUNT(year)
FROM car_dekho
WHERE year=2023
GROUP BY year;

-- (d) How many cars available in 2020,2021,2022? --
SELECT year,COUNT(year)
FROM car_dekho
WHERE year IN (2020,2021,2022)
GROUP BY year;

-- (e) Client asked me to print the total of all cars by year.I don't see all details --
SELECT year,COUNT(year)
FROM car_dekho
GROUP BY (year);

-- (f) Client asked to car dealer agent How many diesel cars will there be in 2020? --
SELECT fuel,COUNT(*)
FROM car_dekho
WHERE year=2020 AND fuel="Diesel"
GROUP BY (fuel);

-- (g) Client requested a car dealer agent how many petrol car will be there in 2020? --
SELECT fuel,COUNT(*)
FROM car_dekho
WHERE year=2020 AND fuel="Petrol"
GROUP BY (fuel);

-- (h) Manager told the employee to give a print all the fuel cars(petrol,diesel and CNG) come by all year. --
SELECT fuel,COUNT(year)
FROM car_dekho
WHERE fuel IN ("Petrol","Diesel","CNG")
GROUP BY (fuel);

-- (i) Manager said there were more than 100 cars in a given year,which year had more than 100 cars? --
SELECT year,COUNT(*) 
FROM car_dekho
GROUP BY (year)
HAVING COUNT(year) >100;

-- (j) The Manager said to the employee All cars count details between 2015 and 2023; We need a complete list --
SELECT COUNT(*)
FROM car_dekho
WHERE year BETWEEN 2015 AND 2023;

-- (k) The Manager said to the employee All cars details between 2015 and 2023; We need a complete list --
SELECT * FROM car_dekho
WHERE year BETWEEN 2019 AND 2023;
