-- Part 3: SQL Analysis

CREATE TABLE IF NOT EXISTS hotel_bookings (
    hotel TEXT,
    is_canceled INTEGER,
    lead_time INTEGER,
    arrival_date_year INTEGER,
    arrival_date_month TEXT,
    arrival_date_week_number INTEGER,
    arrival_date_day_of_month INTEGER,
    stays_in_weekend_nights INTEGER,
    stays_in_week_nights INTEGER,
    adults INTEGER,
    children NUMERIC,
    babies INTEGER,
    meal TEXT,
    country TEXT,
    market_segment TEXT,
    distribution_channel TEXT,
    is_repeated_guest INTEGER,
    previous_cancellations INTEGER,
    previous_bookings_not_canceled INTEGER,
    reserved_room_type TEXT,
    assigned_room_type TEXT,
    booking_changes INTEGER,
    deposit_type TEXT,
    agent NUMERIC,
    days_in_waiting_list INTEGER,
    customer_type TEXT,
    adr DOUBLE PRECISION,
    required_car_parking_spaces INTEGER,
    total_of_special_requests INTEGER,
    reservation_status TEXT,
    reservation_status_date DATE,
    "Total_Guests" INTEGER,
    "Stay_Nights" INTEGER,
    "Booking_Status" TEXT
);

-- Q1: Hotel with highest cancellation percentage
SELECT hotel, COUNT(*) AS total_bookings,
       SUM(is_canceled) AS cancelled_bookings,
       ROUND(SUM(is_canceled) * 100.0 / COUNT(*), 2) AS cancellation_percentage
FROM hotel_bookings
GROUP BY hotel
ORDER BY cancellation_percentage DESC;

-- Q2: Months with highest number of bookings
SELECT arrival_date_month AS month, COUNT(*) AS total_bookings
FROM hotel_bookings
GROUP BY arrival_date_month
ORDER BY total_bookings DESC;

-- Q3: Customer types with highest average ADR
SELECT customer_type,
       ROUND(AVG(adr)::numeric, 2) AS average_adr
FROM hotel_bookings
GROUP BY customer_type
ORDER BY average_adr DESC;

-- Q4: Lead time vs cancellation
SELECT
    CASE
        WHEN lead_time BETWEEN 0 AND 30 THEN '0-30 Days'
        WHEN lead_time BETWEEN 31 AND 90 THEN '31-90 Days'
        WHEN lead_time BETWEEN 91 AND 180 THEN '91-180 Days'
        ELSE 'More than 180 Days'
    END AS lead_time_group,
    COUNT(*) AS total_bookings,
    SUM(is_canceled) AS cancelled_bookings,
    ROUND(SUM(is_canceled) * 100.0 / COUNT(*), 2) AS cancellation_rate
FROM hotel_bookings
GROUP BY
    CASE
        WHEN lead_time BETWEEN 0 AND 30 THEN '0-30 Days'
        WHEN lead_time BETWEEN 31 AND 90 THEN '31-90 Days'
        WHEN lead_time BETWEEN 91 AND 180 THEN '91-180 Days'
        ELSE 'More than 180 Days'
    END
ORDER BY MIN(lead_time);

-- Q5: Top 5 countries with completed bookings
-- Uses CASE WHEN, COUNT(), AVG(), GROUP BY, ORDER BY, WHERE
SELECT
    country,
    CASE WHEN is_canceled = 0 THEN 'Completed' ELSE 'Cancelled' END AS booking_status,
    COUNT(*) AS total_bookings,
    ROUND(AVG(adr)::numeric, 2) AS average_adr
FROM hotel_bookings
WHERE is_canceled = 0
GROUP BY country,
         CASE WHEN is_canceled = 0 THEN 'Completed' ELSE 'Cancelled' END
ORDER BY total_bookings DESC
LIMIT 5;
