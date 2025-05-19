SELECT *
FROM bookings
INNER JOIN users
ON bookings.user_id = users.id

SELECT *
FROM properties
LEFT JOIN reviews
ON properties.property_id = reviews.property_id
ORDER BY reviews.rating DESC

SELECT *
FROM users
FULL OUTER JOIN bookings
ON users.id = bookings.user_id
