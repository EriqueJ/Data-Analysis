-- Using Logical and Comparison Operators.
-- Dataset used; access_to_basic_services
-- We would like to analyze the availability of drinking water and sanitation services and see whether they correlate with the countries GDP in the SUb-Saharan Africa.

SELECT
	Country_name,
    Time_period,
    Pct_managed_drinking_water_services,
    Pct_managed_sanitation_services,
	Est_population_in_millions,
    Est_gdp_in_billions
FROM
	united_nations.access_to_basic_services
WHERE
	Region = "Sub-Saharan Africa"
AND 
    Time_period = 2020
    
-- We find out that there are NULL values in our dataset.
-- We need our results to be exclusive of the NULL values

AND
	Est_gdp_in_billions IS NOT NULL

-- We are able to tell the five leading economie in Sub-Sahara Africa, which include
-- Nigeria, South Africa, Ethiopia, Kenya and Ghana - this is achieved by sorting Est_gdp_in_billions column.
-- The following query is used to return the big five economies only 

AND 
	Country_name NOT IN  ("Nigeria", "South Africa", "Ethiopia", "Kenya", "Ghana")

-- Upon arranging the data in ascending order we can see that;
-- Nigeria has low Pct_managed_drinking_water_services(77.3)and Pct_managed_sanitation_services(42.67) 
-- compared to South Africa which has higher Pct_managed_drinking_water_services(92.00) and Pct_managed_sanitation_services(78.67) 
-- therefore there lacks a correlation between Pct_managed_drinking_water_services, Pct_managed_sanitation_services and Est_gdp_in_billions
-- however this is for the five countries only lets include the other countries in the Sub-Sahara Africa, while excluding this five

AND Country_name NOT IN  ("Nigeria", "South Africa", "Ethiopia", "Kenya", "Ghana");
-- The results in descending order show that Angola has Pct_managed_drinking_water_services of 52.33 and Pct_managed_sanitation_services of 47.0
-- while Cameroon has Pct_managed_drinking_water_services of 64.00 and Pct_managed_sanitation_services 43.00
-- therefore there lacks a noticeable correlation between Pct_managed_drinking_water_services, Pct_managed_sanitation_services and Est_gdp_in_billions






