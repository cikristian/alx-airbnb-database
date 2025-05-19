SELECT *
FROM reviews
WHERE ratings > (
    SELECT AVG(ratings )
    FROM reviews
    WHERE ratings = 4.0
);

SELECT COUNT(user_id)
FROM bookings
WHERE user_id > 3;