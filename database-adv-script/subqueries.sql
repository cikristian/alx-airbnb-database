SELECT *
FROM reviews
WHERE ratings > (
    SELECT AVG(ratings )
    FROM reviews
    WHERE ratings = 4.0
);