# 🧾 Partitioning Performance Report

## ✅ Setup
- Partitioned `Booking` table by `start_date` by year.
- Created separate partitions for 2022, 2023, and 2024.

## 📊 Query Tested
```sql
SELECT * FROM Booking
WHERE start_date BETWEEN '2023-06-01' AND '2023-06-30';
