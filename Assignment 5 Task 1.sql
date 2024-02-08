INSERT INTO Venue_1 (venue_name, address) VALUES
('China', 'Wuhan'),
('Russia', 'Moscow'),
('USA', 'Las Vegas'),
('India', 'Mumbai'),
('Japan', 'Tokyo'),
('Brazil', 'Rio'),
('Israel', 'Tel Aviv'),
('Srilanka', 'Colombo'),
('Australia', 'Perth'),
('UK', 'London');

SELECT * FROM tbs.venue_1;
--------------------------------
INSERT INTO Event_1 (event_name, event_date, event_time, venue_id, total_seats, available_seats, ticket_price, event_type) VALUES

('Group Song', '2024-02-15', '17:00:00', 1, 100, 100, 1500.00, 'Concert'),
('Avatar', '2024-02-04', '18:00:00', 2, 200, 200, 1200.00, 'Movie'),
('RRR', '2024-02-03', '18:30:00', 3, 250, 200, 1200.00, 'Movie'),
('Rampwalk', '2024-02-04', '16:00:00', 4, 20, 20, 1000.00, 'Concert'),
('StandUp', '2024-02-04', '17:00:00', 5, 200, 200, 1200.00, 'Concert'),
('TEDxTalk', '2024-02-04', '12:00:00', 6, 220, 200, 900.00, 'Concert'),
('Dance show', '2024-02-05', '18:00:00', 7, 200, 200, 1200.00, 'Concert'),
('3idiots', '2024-02-05', '20:00:00', 8, 100, 80, 1100.00, 'Movie'),
('Running Comp', '2024-02-06', '17:30:00', 9, 110, 60, 900.00, 'Concert'),
('DJ Cup', '2024-02-06', '21:00:00', 10, 200, 16000, 1800.00, 'Concert');

SELECT * FROM tbs.event_1;
-----------------------------
INSERT INTO Customer_1 (customer_name, email, phone_number) VALUES

('Vaishnav', 'Vaishnav1@email.com', '934567890'),
('Yash', 'Yash2@email.com', '987654321'),
('Ashish', 'Ashish2@email.com', '985654321'), 	
('Virat', 'Virat2@email.com', '98765021'),
('Rohit', 'Rohit2@email.com', '987456721'),
('Dhoni', 'Dhoni2@email.com', '987654421'),
('Hardik', 'Hardik2@email.com', '987224321'),
('Bhuvi', 'Bhuvi2@email.com', '987654521'),
('Raina', 'Raina2@email.com', '987651121'),
('Sachin', 'Sachin2@email.com', '987004321');

SELECT * FROM tbs.customer_1;
--------------------------------------
INSERT INTO Booking_Table1 (customer_id, event_id, num_tickets, total_cost, booking_date) VALUES
(1, 51, 2, 3000.00, '2024-01-10'),
(2, 52, 4, 4800.00, '2024-01-12'),
(3, 53, 2, 3000.00, '2024-01-17'),
(4, 54, 3, 2000.00, '2024-01-11'),
(5, 55, 4, 3020.00, '2024-01-18'),
(6, 56, 7, 3040.00, '2024-01-19'),
(7, 57, 9, 3011.00, '2024-01-15'),
(8, 58, 10, 3030.00, '2024-01-23'),
(9, 59, 20, 3060.00, '2024-01-13'),
(10, 60, 12, 3500.00, '2024-01-14');

SELECT * FROM tbs.booking_table1;

