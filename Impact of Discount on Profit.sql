SELECT
    CASE
        WHEN Discount = 0 THEN '0% - No Discount'
        WHEN Discount <= 0.1 THEN '1-10%'
        WHEN Discount <= 0.2 THEN '11-20%'
        WHEN Discount <= 0.3 THEN '21-30%'
        ELSE '31%+'
    END AS discount_band,
    COUNT(*) AS total_items,
    ROUND(AVG(Profit), 2) AS avg_profit,
    ROUND(SUM(Profit), 2) AS total_profit
FROM "Sample - Superstore"
GROUP BY discount_band
ORDER BY discount_band;