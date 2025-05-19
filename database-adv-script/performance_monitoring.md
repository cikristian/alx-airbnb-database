EXPLAIN ANALYZE
SELECT * FROM bookings WHERE user_id = 101;

CREATE INDEX idx_bookings_user_id ON bookings(user_id);
CREATE INDEX idx_bookings_start_date ON bookings(start_date);