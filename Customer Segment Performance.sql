SELECT
    Segment,
    COUNT(DISTINCT "Customer ID") AS unique_customers,
    COUNT(DISTINCT "Order ID") AS total_orders,
    ROUND(SUM(Sales), 2) AS revenue,
    ROUND(SUM(Profit), 2) AS profit,
    ROUND(SUM(Profit) / SUM(Sales) * 100, 2) AS margin_pct
FROM "Sample - Superstore"
GROUP BY Segment
ORDER BY revenue DESC;