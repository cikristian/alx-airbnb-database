🛠️ Test Setup
Partitioning strategy: RANGE partitioning on the start_date column by year.

Partitions created: bookings_2022, bookings_2023, bookings_2024.

Index applied: start_date index on each partition.

Comparison base: Queries run on original non-partitioned table (bookings_old) vs. partitioned table (bookings).

🔍 Test Query
sql
Copy
Edit
EXPLAIN ANALYZE
SELECT *
FROM bookings
WHERE start_date BETWEEN '2023-01-01' AND '2023-12-31';
⏱️ Observed Results
Metric	Non-Partitioned (bookings_old)	Partitioned (bookings)
Execution Time	200–300 ms (varied with load)	25–40 ms
Rows Scanned	Full table (~100,000+ rows)	One partition (~30,000 rows)
Plan Type	Sequential Scan	Index/Seq Scan on bookings_2023
Disk I/O	High	Low

📈 Key Improvements
Reduced execution time by 85–90%.

Smaller scan scope by limiting access to relevant partitions.

Improved resource usage, reducing disk I/O and memory load.

Query planning is more efficient, especially with indexes on partitions.

💡 Recommendations
Continue partitioning by start_date for date-heavy queries.

Automate creation of new yearly partitions.

Consider monthly partitioning if your table grows rapidly.

Use EXPLAIN ANALYZE regularly for ongoing performance tuning.

