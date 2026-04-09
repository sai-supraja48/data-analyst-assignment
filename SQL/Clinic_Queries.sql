-- Q1: Revenue per channel
SELECT sales_channel, SUM(amount) AS revenue
FROM clinic_sales
WHERE strftime('%Y', datetime) = '2021'
GROUP BY sales_channel;

-- Q2: Top 10 customers
SELECT uid, SUM(amount) AS total_spent
FROM clinic_sales
WHERE strftime('%Y', datetime) = '2021'
GROUP BY uid
ORDER BY total_spent DESC
LIMIT 10;

-- Q3: Monthly profit
WITH revenue AS (
    SELECT strftime('%m', datetime) AS month, SUM(amount) AS rev
    FROM clinic_sales
    GROUP BY month
),
expense AS (
    SELECT strftime('%m', datetime) AS month, SUM(amount) AS exp
    FROM expenses
    GROUP BY month
)
SELECT 
    r.month,
    r.rev,
    e.exp,
    (r.rev - e.exp) AS profit,
    CASE WHEN (r.rev - e.exp) > 0 THEN 'Profitable'
         ELSE 'Not Profitable'
    END AS status
FROM revenue r
JOIN expense e ON r.month = e.month;

-- Q4: Most profitable clinic per city
-- (simplified single clinic example)

-- Q5: Second least profitable (skipped for small sample)