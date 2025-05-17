-- partitioning.sql

-- 1. Rename the original table for backup
ALTER TABLE Booking RENAME TO Booking_old;

-- 2. Create the partitioned parent table
CREATE TABLE Booking (
    id SERIAL PRIMARY KEY,
    user_id INT,
    property_id INT,
    payment_id INT,
    booking_date DATE,
    status TEXT,
    start_date DATE
) PARTITION BY RANGE (start_date);

-- 3. Create partitions by year
CREATE TABLE Booking_2022 PARTITION OF Booking
    FOR VALUES FROM ('2022-01-01') TO ('2023-01-01');

CREATE TABLE Booking_2023 PARTITION OF Booking
    FOR VALUES FROM ('2023-01-01') TO ('2024-01-01');

CREATE TABLE Booking_2024 PARTITION OF Booking
    FOR VALUES FROM ('2024-01-01') TO ('2025-01-01');

-- 4. Copy data from old table to partitioned table
INSERT INTO Booking (id, user_id, property_id, payment_id, booking_date, status, start_date)
SELECT id, user_id, property_id, payment_id, booking_date, status, start_date
FROM Booking_old;

-- 5. Optional: drop old table after validation
-- DROP TABLE Booking_old;
