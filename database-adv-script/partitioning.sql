-- Step 1: Rename the original bookings table
ALTER TABLE bookings RENAME TO bookings_old;

-- Step 2: Create the new partitioned bookings table
CREATE TABLE bookings (
    booking_id SERIAL PRIMARY KEY,
    user_id INT NOT NULL,
    property_id INT NOT NULL,
    start_date DATE NOT NULL,
    end_date DATE NOT NULL,
    status VARCHAR(50),
    created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP
) PARTITION BY RANGE (start_date);

-- Step 3: Create partitions based on year (example: 2022, 2023, 2024)

CREATE TABLE bookings_2022 PARTITION OF bookings
    FOR VALUES FROM ('2022-01-01') TO ('2023-01-01');

CREATE TABLE bookings_2023 PARTITION OF bookings
    FOR VALUES FROM ('2023-01-01') TO ('2024-01-01');

CREATE TABLE bookings_2024 PARTITION OF bookings
    FOR VALUES FROM ('2024-01-01') TO ('2025-01-01');

-- Step 4: Optional – migrate data from old table to new partitioned table
INSERT INTO bookings (booking_id, user_id, property_id, start_date, end_date, status, created_at)
SELECT booking_id, user_id, property_id, start_date, end_date, status, created_at
FROM bookings_old;

-- Step 5: Drop the old table if migration is successful (be cautious)
-- DROP TABLE bookings_old;
EXPLAIN ANALYZE
SELECT *
FROM bookings
WHERE start_date BETWEEN '2023-01-01' AND '2023-12-31';

EXPLAIN ANALYZE
SELECT *
FROM bookings
WHERE user_id = 101
  AND start_date BETWEEN '2023-06-01' AND '2023-06-30';
