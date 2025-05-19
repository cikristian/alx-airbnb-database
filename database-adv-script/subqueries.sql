SELECT *
FROM reviews
WHERE ratings > (
    SELECT AVG(ratings )
    FROM reviews
    WHERE ratings = 4.0
);

SELECT DISTINCT user_id
FROM bookings AS b1
WHERE (
    SELECT COUNT(*)
    FROM bookings AS b2
    WHERE b2.user_id = b1.user_id
) > 3;