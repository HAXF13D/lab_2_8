WITH dist as (
	SELECT 
		address, 
		((SELECT geo_lat FROM city WHERE address == "г Самара") - geo_lat) *
		((SELECT geo_lat FROM city WHERE address == "г Самара") - geo_lat) + 
		((SELECT geo_lon FROM city WHERE address == "г Самара") - geo_lon) *
		((SELECT geo_lon FROM city WHERE address == "г Самара") - geo_lon)
		as 
		distance 
		FROM 
		city
)
SELECT address, distance
FROM dist
WHERE address <> "г Самара"
ORDER by distance ASC
LIMIT 3;

