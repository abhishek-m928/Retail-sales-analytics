SELECT
    "Customer Name",
    Segment,
    Region,
    COUNT(DISTINCT "Order ID") AS total_orders,
    ROUND(SUM(Sales), 2) AS lifetime_value,
    ROUND(SUM(Profit), 2) AS total_profit
FROM "Sample - Superstore"
GROUP BY "Customer ID"
ORDER BY lifetime_value DESC
LIMIT 10;
