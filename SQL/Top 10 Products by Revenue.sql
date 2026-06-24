SELECT
    "Product Name",
    Category,
    SUM(Quantity) AS units_sold,
    ROUND(SUM(Sales), 2) AS revenue,
    ROUND(SUM(Profit), 2) AS profit
FROM "Sample - Superstore"
GROUP BY "Product Name"
ORDER BY revenue DESC
LIMIT 10;
