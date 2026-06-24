SELECT
    SUBSTR("Order Date", 1, 7) AS year_month,
    COUNT(DISTINCT "Order ID") AS total_orders,
    ROUND(SUM(Sales), 2) AS revenue,
    ROUND(SUM(Profit), 2) AS profit
FROM "Sample - Superstore"
GROUP BY year_month
ORDER BY year_month;