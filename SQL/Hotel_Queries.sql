-- Q1: Last booked room per user
SELECT user_id, room_no
FROM bookings b
WHERE booking_date = (
    SELECT MAX(booking_date)
    FROM bookings
    WHERE user_id = b.user_id
);

-- Q2: Booking total (Nov 2021)
SELECT 
    bc.booking_id,
    SUM(bc.item_quantity * i.item_rate) AS total_amount
FROM booking_commercials bc
JOIN items i ON bc.item_id = i.item_id
WHERE strftime('%Y-%m', bc.bill_date) = '2021-11'
GROUP BY bc.booking_id;

-- Q3: Bills >1000 (Oct 2021)
SELECT 
    bc.bill_id,
    SUM(bc.item_quantity * i.item_rate) AS bill_amount
FROM booking_commercials bc
JOIN items i ON bc.item_id = i.item_id
WHERE strftime('%Y-%m', bc.bill_date) = '2021-10'
GROUP BY bc.bill_id
HAVING bill_amount > 1000;

-- Q4: Most & least ordered items per month
WITH item_data AS (
    SELECT 
        strftime('%m', bill_date) AS month,
        item_id,
        SUM(item_quantity) AS total_qty,
        RANK() OVER (PARTITION BY strftime('%m', bill_date) ORDER BY SUM(item_quantity) DESC) AS rnk_desc,
        RANK() OVER (PARTITION BY strftime('%m', bill_date) ORDER BY SUM(item_quantity) ASC) AS rnk_asc
    FROM booking_commercials
    WHERE strftime('%Y', bill_date) = '2021'
    GROUP BY month, item_id
)
SELECT * FROM item_data
WHERE rnk_desc = 1 OR rnk_asc = 1;

-- Q5: 2nd highest bill per month
WITH bill_data AS (
    SELECT 
        strftime('%m', bc.bill_date) AS month,
        b.user_id,
        bc.bill_id,
        SUM(bc.item_quantity * i.item_rate) AS total_bill,
        DENSE_RANK() OVER (
            PARTITION BY strftime('%m', bc.bill_date)
            ORDER BY SUM(bc.item_quantity * i.item_rate) DESC
        ) AS rnk
    FROM booking_commercials bc
    JOIN items i ON bc.item_id = i.item_id
    JOIN bookings b ON bc.booking_id = b.booking_id
    WHERE strftime('%Y', bc.bill_date) = '2021'
    GROUP BY month, b.user_id, bc.bill_id
)
SELECT * FROM bill_data
WHERE rnk = 2;