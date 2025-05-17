-- performance.sql

SELECT 
    b.id AS booking_id,
    b.booking_date,
    b.status AS booking_status,
    u.id AS user_id,
    u.name AS user_name,
    u.email AS user_email,
    p.id AS property_id,
    p.city AS property_city,
    pay.id AS payment_id,
    pay.amount,
    pay.status AS payment_status
FROM Booking b
JOIN User u ON b.user_id = u.id
JOIN Property p ON b.property_id = p.id
JOIN Payment pay ON pay.booking_id = b.id;
WHERE
AND
EXPLAIN
