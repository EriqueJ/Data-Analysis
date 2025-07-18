-- Using Logical and Comparison Operators.
-- Dataset used; access_to_basic_services
-- Invistigate disparities in water access services inluding sanitation and drinking water among various countries.
SELECT
	Country_name,
    Time_period,
    Pct_managed_drinking_water_services,
    Pct_managed_sanitation_services,
    Est_population_in_millions,
    Est_gdp_in_billions
FROM
	united_nations.access_to_basic_services
WHERE(
	Country_name = "Kenya"
    OR Country_name = "Mali"
	OR Country_name = "Togo"
	OR Country_name = "Niger"
	OR Country_name = "Ethiopia" 
	OR Country_name = "Tanzania"
    )
    AND Time_period BETWEEN 2018 AND 2020
    
    
    -- I used both WHERE and AND in my query, which explains the presence of the parenthisis () so that the WHERE function can be executed first, and not vice versa.
    -- Upon running the query we can see how the countries faired in the said period.