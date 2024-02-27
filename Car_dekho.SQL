CREATE SCHEMA cars;
USE cars;
-- READ DATA--


SELECT * FROM cars.`car_ dekho`;
-- Total cars: To get a count of total records--

SELECT count(*) FROM cars.`car_ dekho`;

-- The manager asked the employee How many cars will be availabl in 2023?--

SELECT count(*) FROM cars.`car_ dekho`where year=2023;

-- the manager asked the employee How many cars is available in 2020,2021,2022--

SELECT count(*) FROM cars.`car_ dekho`where year=2020; #74
SELECT count(*) FROM cars.`car_ dekho`where year=2021; #07
SELECT count(*) FROM cars.`car_ dekho`where year=2022; #07

-- GROUP BY--
SELECT count(*) FROM cars.`car_ dekho`where year in(2020,2021,2022)group by year;

-- cliant asked me to print the total of all cars by year I don't see all the details--

SELECT YEAR, count(*) FROM cars.`car_ dekho`group by year;

-- cliant asked to car dealer agent How many Diesel cars will there be in 2020?--

SELECT count(*) FROM cars.`car_ dekho`WHERE YEAR = 2020 AND fuel ="Diesel"; #20

-- cliant requested a car dealer agent How many petrol cars will there be in 2020?--

SELECT count(*) FROM cars.`car_ dekho`WHERE YEAR = 2020 AND fuel ="Petrol"; #51

-- The manager told emloyee to give a print All thr fuel cars (petrol,diesel,and CNG)come bu all year--

SELECT count(*) FROM cars.`car_ dekho`WHERE fuel ="Petrol" GROUP BY YEAR;
SELECT count(*) FROM cars.`car_ dekho`WHERE fuel ="Diesel" GROUP BY YEAR;
SELECT count(*) FROM cars.`car_ dekho`WHERE fuel ="CNG" GROUP BY YEAR;

-- Manager said there were more than 100 cars in a given year,which year had more than 100 cars?--

SELECT count(*) FROM cars.`car_ dekho`GROUP BY YEAR HAVING count(*)>100;
SELECT count(*) FROM cars.`car_ dekho`GROUP BY YEAR HAVING count(*)<50;

-- The manager said to the employee All cars count details between 2015 and 2023: we need a complate list--

SELECT count(*) FROM cars.`car_ dekho`WHERE YEAR BETWEEN 2015 and 2023;

-- The manager said to the employee All cars details between 2015 to 2023 we need complate list--

SELECT * FROM cars.`car_ dekho`WHERE YEAR BETWEEN 2015 and 2023;