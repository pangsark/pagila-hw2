/*
 * Count the number of movies that contain each type of special feature.
 * Order the results alphabetically be the special_feature.
 */

/*
 * Count the number of movies that contain each type of special feature.
 * Order the results alphabetically be the special_feature.
 */

SELECT unnest(special_features) AS special_features, 
COUNT(special_features)
FROM film
GROUP BY unnest(special_features)
ORDER BY unnest(special_features);
