-- ===============================
-- 📁 database_index.sql
-- Indexes for high-usage columns
-- ===============================

-- 🔹 User Table Indexes
CREATE INDEX idx_user_email ON User(email);
CREATE INDEX idx_user_created_at ON User(created_at);

-- 🔹 Booking Table Indexes
CREATE INDEX idx_booking_user_id ON Booking(user_id);
CREATE INDEX idx_booking_property_id ON Booking(property_id);
CREATE INDEX idx_booking_booking_date ON Booking(booking_date);
CREATE INDEX idx_booking_status ON Booking(status);

-- 🔹 Property Table Indexes
CREATE INDEX idx_property_host_id ON Property(host_id);
CREATE INDEX idx_property_city ON Property(city);
CREATE INDEX idx_property_created_at ON Property(created_at);
EXPLAIN ANALYZE
SELECT *
FROM Property
WHERE host_id = 5 AND city = 'New York';
