create database cars_analysis;
use cars_analysis

-- READ CARS DATA--

select * from car_dekho;

-- DISTINCT CAR NAME FROM CAR_DEKHO TABLE --
select distinct name from car_dekho;

-- TOTAL NAME COUNT -- 
select count(name) from car_dekho;

-- TOTAL CARS  COUNT --
select count(*) from car_dekho;

-- The Manager asked Employee how many cars will be available in 2023 --
select count(*) from car_dekho where year = 2023;

-- The Manager asked Employee how many cars will be available in 2020 , 2021 , 2022 --
select count(*) from car_dekho where year in(2020 , 2021 , 2022);

-- GROUP BY --
select count(*) from car_dekho where year in(2020 , 2021 , 2022) group by year ;

-- Clients wants total of all cars by year--
select year , count(*) as year_by_total from car_dekho group by year

-- Client wants to know that how many diesel cars will be there in 2015--
select count(*) from car_dekho where year = 2015  and fuel = "Diesel" ;

-- Client wants to know that how many diesel cars will be there in 2018--
select count(*) from car_dekho where year = 2018  and fuel = "Diesel" ;

-- Show the number of Cars fuel wise and year wise --
-- FUEL = Petrol --
 select year , count(*) as number_of_Petrol_cars_by_year from car_dekho where fuel = "Petrol" group by year;
 
 -- FUEL = Diesel --
  select year , count(*) as number_of_Diesel_cars_by_year from car_dekho where fuel = "Diesel" group by year;
  
   -- FUEL = CNG --
     select year , count(*) as number_of_CNG_cars_by_year from car_dekho where fuel = "CNG" group by year;
     
    -- FUEL = Electric --
    select year , count(*) as number_of_Electric_cars_by_year from car_dekho where fuel = "Electric" group by year;
         
   -- Show Car Availability Count and Year which have more than 100 cars available --      
    select year , count(*) from car_dekho group by year having count(*)>100; 
    
-- Count all Cars which are available between 2015 and 2023 --
select count(*) from car_dekho where year between 2015 and 2023 ;

-- All Cars details between 2015 and 2023 --
select * from car_dekho where year between 2015 and 2023;

-- Show the years which have car selling price is greater than 1 Crore 20 Lakh --
select year from car_dekho group by year having sum(selling_price)> 120000000 ;

-- Show Average,Maximum,Minmum Selling Price --
select avg(selling_price) from car_dekho;
select max(selling_price) from car_dekho;
select min(selling_price) from car_dekho;

-- END --
