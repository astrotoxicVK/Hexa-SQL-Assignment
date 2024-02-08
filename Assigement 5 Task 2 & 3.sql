-- Task 2 --

SELECT event_name, event_date, event_time, ticket_price
FROM Event_1;

SELECT *
FROM Event_1
WHERE available_seats > 0;

SELECT *
FROM Event_1
WHERE event_name LIKE '%cup%';
 
SELECT *
FROM Event_1
WHERE ticket_price BETWEEN 1000 AND 2500;

SELECT *
FROM Event_1
WHERE event_date BETWEEN '2024-01-01' AND '2024-02-01';

SELECT *
FROM Event_1
WHERE available_seats > 0 AND event_type = 'Concert';

SELECT *
FROM Customer_1
ORDER BY customer_id
LIMIT 5 OFFSET 5;

SELECT *
FROM Booking_table1
WHERE num_tickets > 4;

SELECT *
FROM Customer_1
WHERE phone_number LIKE '%000';

SELECT *
FROM Event_1
WHERE available_seats > 15000
ORDER BY total_seats ASC;

SELECT *
FROM Event_1
WHERE event_name NOT LIKE 'x%' AND event_name NOT LIKE 'y%' AND event_name NOT LIKE 'z%';

DELETE FROM Event_1 WHERE Event_id >= 69; 

SELECT * FROM EVENT_1;

-- Task 3  --

SELECT event_type, AVG(ticket_price) AS average_price
FROM Event_1
GROUP BY event_type;

SELECT e.event_name, SUM(b.total_cost) AS total_revenue
FROM Booking_table1 b
JOIN Event_1 e ON b.event_id = e.event_id
GROUP BY e.event_id, e.event_name;

SELECT event_id, SUM(num_tickets) AS total_tickets_sold
FROM Booking_table1
GROUP BY event_id
ORDER BY total_tickets_sold DESC
LIMIT 1;

SELECT event_id, SUM(num_tickets) AS total_tickets_sold
FROM Booking_table1
GROUP BY event_id;

SELECT *
FROM Event_1
LEFT JOIN Booking_table1 ON Event_1.event_id = Booking_table1.event_id
WHERE Booking_table1.booking_id IS NULL;

SELECT customer_id, SUM(num_tickets) AS total_tickets
FROM Booking_table1
GROUP BY customer_id
ORDER BY total_tickets DESC
LIMIT 1;

SELECT e.event_name, MONTH(b.booking_date) AS month, SUM(b.num_tickets) AS tickets_sold
FROM Booking_table1 b
JOIN Event_1 e ON b.event_id = e.event_id
GROUP BY e.event_name, MONTH(b.booking_date);

SELECT v.venue_name, AVG(e.ticket_price) AS average_ticket_price
FROM Event_1 e
JOIN Venue_1 v ON e.venue_id = v.venue_id
GROUP BY v.venue_name;

SELECT e.event_type, SUM(b.num_tickets) AS total_tickets_sold
FROM Event_1 e
JOIN Booking_table1 b ON e.event_id = b.event_id
GROUP BY e.event_type;

SELECT YEAR(e.event_date) AS event_year, SUM(b.total_cost) AS total_revenue
FROM Event_1 e
JOIN Booking_table1 b ON e.event_id = b.event_id
GROUP BY YEAR(e.event_date);

SELECT
    c.customer_id,
    c.customer_name,
    COUNT(DISTINCT b.event_id) AS num_events_booked;
    
SELECT c.customer_id, c.customer_name, COUNT(DISTINCT b.event_id) AS num_events_booked
FROM Customer_1 c
JOIN Booking_table1 b ON c.customer_id = b.customer_id
GROUP BY c.customer_id, c.customer_name
HAVING COUNT(DISTINCT b.event_id) > 1;

SELECT customer_id, SUM(total_cost) AS total_revenue
FROM Booking_table1
GROUP BY customer_id;

SELECT e.event_type, v.venue_name, AVG(e.ticket_price) AS average_ticket_price
FROM Event_1 e
JOIN Venue_1 v ON e.venue_id = v.venue_id
GROUP BY e.event_type, v.venue_name;

SELECT customer_id, SUM(num_tickets) AS total_tickets_purchased
FROM Booking_table1
WHERE booking_date >= CURDATE() - INTERVAL 30 DAY
GROUP BY customer_id;

