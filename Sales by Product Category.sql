SELECT
    Category,
    COUNT(DISTINCT "Order ID") AS total_orders,
    SUM(Quantity) AS units_sold,
    ROUND(SUM(Sales), 2) AS revenue,
    ROUND(SUM(Profit), 2) AS profit,
    ROUND(SUM(Profit) / SUM(Sales) * 100, 2) AS margin_pct
FROM "Sample - Superstore"
GROUP BY Category
ORDER BY revenue DESC;