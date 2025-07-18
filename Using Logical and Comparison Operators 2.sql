-- Using Logical and Comparison Operators.
-- The assumption is that we are working for a non-profit organization whose resources are limited.
-- We are to check which countries are currently (2020) in dire assistance as here is where the organization would have the greatest impact

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
	Time_period = 2020
    AND Pct_managed_drinking_water_services <= 50
    AND Pct_managed_sanitation_services <=50;
    
-- From the operation we can tell that the most affected countries are Central African Republic, Democratic Republic of the Congo and South Sudan consecutively.
    