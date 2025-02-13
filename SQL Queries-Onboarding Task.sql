-- A. Number of cities in each state

SELECT
    state,
    COUNT(DISTINCT city) AS city_count
FROM
    [dbo].[AUS_Post_suburb]
GROUP BY
    state
ORDER BY
    state;

-- B. Number of unique postcodes and suburbs in each city

SELECT
    city,
    COUNT(DISTINCT postcode) AS number_of_unique_postcodes,
    COUNT(DISTINCT suburb) AS number_of_unique_suburbs
FROM
    dbo.AUS_Post_suburb
GROUP BY
    city
ORDER BY
    city;

-- C1. Average Property Median Value by Suburb

SELECT
    suburb,
    AVG(property_median_value) AS avg_property_medianvalue
FROM
    [dbo].[NSW_PropertyMedainValue]
WHERE
    property_median_value IS NOT NULL
GROUP BY
    suburb;

-- C2. Average Property Median Value by Postcode

SELECT
    postcode,
    AVG(property_median_value) AS avg_property_medianvalue
FROM
    [dbo].[NSW_PropertyMedainValue]
WHERE
    property_median_value IS NOT NULL
GROUP BY
    postcode;

-- C3. Average Property Median Value by Suburb and Postcode

SELECT
    suburb,
    postcode,
    AVG(property_median_value) AS avg_property_medianvalue
FROM
    [dbo].[NSW_PropertyMedainValue]
WHERE
    property_median_value IS NOT NULL
GROUP BY
    suburb, postcode
ORDER BY
    suburb, postcode;
