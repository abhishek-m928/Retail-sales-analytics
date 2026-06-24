SELECT
    "Ship Mode",
    COUNT(DISTINCT "Order ID") AS total_orders,
    ROUND(AVG(JULIANDAY("Ship Date") - JULIANDAY("Order Date")), 1) AS avg_ship_days
FROM "Sample - Superstore"
GROUP BY "Ship Mode"
ORDER BY avg_ship_days;