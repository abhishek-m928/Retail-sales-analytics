SELECT
    "Product Name",
    Category,
    ROUND(SUM(Sales), 2) AS revenue,
    ROUND(SUM(Profit), 2) AS profit
FROM "Sample - Superstore"
GROUP BY "Product Name"
ORDER BY profit ASC
LIMIT 10;
