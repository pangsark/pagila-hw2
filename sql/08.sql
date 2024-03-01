/*
 * Select the title of all 'G' rated movies that have the 'Trailers' special feature.
 * Order the results alphabetically.
 *
 * HINT:
 * Use `unnest(special_features)` in a subquery.
 */

SELECT f.title
FROM film f
WHERE f.rating='G'
AND 'Trailers' IN (
   SELECT unnest(special_features)
   FROM film f2
   WHERE f2.film_id = f.film_id
)
ORDER BY f.title;
