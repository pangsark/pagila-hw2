/*
 * List the title of all movies that have both the 'Behind the Scenes' and the 'Trailers' special_feature
 *
 * HINT:
 * Create a select statement that lists the titles of all tables with the 'Behind the Scenes' special_feature.
 * Create a select statement that lists the titles of all tables with the 'Trailers' special_feature.
 * Inner join the queries above.
*/

SELECT film.title AS title
FROM film
WHERE 'Behind the Scenes' = ANY (
    SELECT unnest(f.special_features)
    FROM film f
    WHERE f.film_id = film.film_id
    )
    AND
    'Trailers' = ANY (
        SELECT unnest(f.special_features)
        FROM film f
        WHERE f.film_id = film.film_id
    )
ORDER BY title;

