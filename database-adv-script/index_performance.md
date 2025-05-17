# 📊 Query Performance Check

Use these queries **before and after indexing** to compare performance using `EXPLAIN ANALYZE`.

---

## 🔍 1. Check Booking by User and Status

```sql
EXPLAIN ANALYZE
SELECT *
FROM Booking
WHERE user_id = 101 AND status = 'confirmed'
ORDER BY booking_date DESC
LIMIT 10;
```

---

## 🧑 2. Lookup User by Email

```sql
EXPLAIN ANALYZE
SELECT *
FROM User
WHERE email = 'user@example.com';
```

---

## 🕓 3. Sort Users by Creation Date

```sql
EXPLAIN ANALYZE
SELECT *
FROM User
ORDER BY created_at DESC
LIMIT 20;
```

---

## 🏠 4. Filter Properties by Host and City

```sql
EXPLAIN ANALYZE
SELECT *
FROM Property
WHERE host_id = 5 AND city = 'New York';
```

---

## 📅 5. Get Recent Bookings for a Property

```sql
EXPLAIN ANALYZE
SELECT *
FROM Booking
WHERE property_id = 10
ORDER BY booking_date DESC
LIMIT 5;
```

---

## 🔗 6. Join Bookings with Users

```sql
EXPLAIN ANALYZE
SELECT b.*, u.name
FROM Booking b
JOIN User u ON b.user_id = u.id
WHERE b.status = 'pending'
ORDER BY b.booking_date DESC;
```

---

## 📍 7. Property Listing Ordered by Date

```sql
EXPLAIN ANALYZE
SELECT *
FROM Property
ORDER BY created_at DESC
LIMIT 15;
```
