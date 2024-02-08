-- Task 4 --
SELECT venue_name, 
       (SELECT AVG(ticket_price) 
        FROM event_1
        WHERE event_1.venue_1_id = venue_1.venue_id) AS avg_ticket_price 
FROM venue_1;



SELECT * 
FROM event_1
WHERE (SELECT SUM(num_tickets) 
       FROM booking_table1 
       WHERE booking_table1.event_1_id = event_1.event_id) > 0.5 * total_seats;



SELECT event_id, event_name, 
       (SELECT SUM(num_tickets) 
        FROM booking_table1 
        WHERE booking_table1.event_id = event_1.event_id) AS total_tickets_sold 
FROM event_1;


SELECT * 
FROM customer_1
WHERE NOT EXISTS (SELECT * 
                  FROM booking_table1 
                  WHERE booking_table1.customer_id = customer_1.customer_id);


SELECT * 
FROM event_1
WHERE event_id NOT IN (SELECT event_id 
                       FROM booking_table1);
                       

SELECT event_type, SUM(num_tickets) AS total_tickets_sold
FROM (SELECT event_1.event_id, event_type, num_tickets 
      FROM event_1 
      LEFT JOIN booking_table1 ON event_1.event_id = booking.event_id) AS combined_data
GROUP BY event_type;


SELECT * 
FROM event_1
WHERE ticket_price > (SELECT AVG(ticket_price) 
                      FROM event_1);

SELECT customer_id, customer_name, 
       (SELECT SUM(total_cost) 
        FROM booking_table1 
        WHERE booking_table1.customer_id = customer_1.customer_id) AS total_revenue 
FROM customer_1;


SELECT * 
FROM customer_1
WHERE customer_id IN (SELECT DISTINCT customer_id 
                      FROM booking_table1 
                      WHERE event_id IN (SELECT event_id 
                                         FROM event_1 
                                         WHERE venue_id = 1));


SELECT e.event_type, COALESCE(SUM(b.num_tickets), 0) AS total_tickets_sold 
FROM event_1 e
LEFT JOIN booking_table1 b ON e.event_id = b.event_id
GROUP BY e.event_type;


SELECT * 
FROM customer_1
WHERE customer_id IN (SELECT DISTINCT customer_id 
                      FROM booking_table1 
                      WHERE event_id IN (SELECT event_id 
                                         FROM event_1 
                                         WHERE venue_id = 1));

