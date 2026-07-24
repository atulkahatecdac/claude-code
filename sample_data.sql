INSERT INTO projects(project_name,city,location,status,launch_date)
VALUES
('Green Heights','Pune','Hinjewadi','Ongoing','2025-01-10'),
('Lake View','Pune','Wakad','Ready','2024-06-20'),
('Sky Towers','Mumbai','Powai','Upcoming','2026-03-15');

INSERT INTO sales_executives(name,phone,email)
VALUES
('Rahul Patil','9876543210','rahul@test.com'),
('Sneha Shah','9988776655','sneha@test.com');

INSERT INTO customers(first_name,last_name,phone,email,city,occupation,annual_income)
VALUES
('Amit','Joshi','900000001','amit@test.com','Pune','Engineer',1800000),
('Neha','Kulkarni','900000002','neha@test.com','Pune','Doctor',3500000),
('Rohit','Patel','900000003','rohit@test.com','Mumbai','Business',4200000);

INSERT INTO units(project_id,unit_number,unit_type,area_sqft,price,status)
VALUES
(1,'A101','2 BHK',980,8500000,'Available'),
(1,'A102','3 BHK',1300,11000000,'Booked'),
(2,'B201','2 BHK',920,7800000,'Available'),
(3,'C901','4 BHK',2100,25000000,'Available');

INSERT INTO leads(customer_id,project_id,executive_id,source,lead_status,enquiry_date,budget)
VALUES
(1,1,1,'Website','Interested','2026-01-05',9000000),
(2,2,2,'Referral','Site Visit Done','2026-01-10',8000000),
(3,3,1,'Facebook','New','2026-01-12',30000000);

INSERT INTO site_visits(lead_id,visit_date,feedback,rating)
VALUES
(1,'2026-01-08','Liked amenities',5),
(2,'2026-01-15','Needs bigger unit',4);

INSERT INTO bookings(customer_id,unit_id,booking_date,booking_amount,booking_status)
VALUES
(2,2,'2026-01-18',500000,'Confirmed');

INSERT INTO payments(booking_id,payment_date,amount,payment_mode)
VALUES
(1,'2026-01-18',500000,'NEFT');

INSERT INTO support_tickets(customer_id,booking_id,issue_type,priority,status,created_date)
VALUES
(2,1,'Agreement Delay','High','Open','2026-01-25');