-- Insert Users
INSERT INTO User (user_id, first_name, last_name, email, password_hash, phone_number, role)
VALUES
('00000000-0000-0000-0000-000000000001', 'Alice', 'Johnson', 'alice@example.com', 'hashed_password1', '1234567890', 'host'),
('00000000-0000-0000-0000-000000000002', 'Bob', 'Smith', 'bob@example.com', 'hashed_password2', '2345678901', 'guest'),
('00000000-0000-0000-0000-000000000003', 'Carol', 'White', 'carol@example.com', 'hashed_password3', NULL, 'guest'),
('00000000-0000-0000-0000-000000000004', 'David', 'Lee', 'david@example.com', 'hashed_password4', '3456789012', 'host');

-- Insert Properties
INSERT INTO Property (property_id, host_id, name, description, location, pricepernight)
VALUES
('10000000-0000-0000-0000-000000000001', '00000000-0000-0000-0000-000000000001', 'Sunny Apartment', 'A nice sunny apartment in the city center.', 'New York', 120.00),
('10000000-0000-0000-0000-000000000002', '00000000-0000-0000-0000-000000000004', 'Cozy Cottage', 'A quiet and cozy cottage in the countryside.', 'Vermont', 90.00);

-- Insert Bookings
INSERT INTO Booking (booking_id, property_id, user_id, start_date, end_date, total_price, status)
VALUES
('20000000-0000-0000-0000-000000000001', '10000000-0000-0000-0000-000000000001', '00000000-0000-0000-0000-000000000002', '2025-06-10', '2025-06-15', 600.00, 'confirmed'),
('20000000-0000-0000-0000-000000000002', '10000000-0000-0000-0000-000000000002', '00000000-0000-0000-0000-000000000003', '2025-07-01', '2025-07-05', 360.00, 'pending');

-- Insert Payments
INSERT INTO Payment (payment_id, booking_id, amount, payment_method)
VALUES
('30000000-0000-0000-0000-000000000001', '20000000-0000-0000-0000-000000000001', 600.00, 'credit_card');

-- Insert Reviews
INSERT INTO Review (review_id, property_id, user_id, rating, comment)
VALUES
('40000000-0000-0000-0000-000000000001', '10000000-0000-0000-0000-000000000001', '00000000-0000-0000-0000-000000000002', 5, 'Fantastic stay, very clean and well-located!'),
('40000000-0000-0000-0000-000000000002', '10000000-0000-0000-0000-000000000002', '00000000-0000-0000-0000-000000000003', 4, 'Lovely quiet place, perfect for relaxing.');

-- Insert Messages
INSERT INTO Message (message_id, sender_id, recipient_id, message_body)
VALUES
('50000000-0000-0000-0000-000000000001', '00000000-0000-0000-0000-000000000002', '00000000-0000-0000-0000-000000000001', 'Hi Alice, is your apartment available for early check-in?'),
('50000000-0000-0000-0000-000000000002', '00000000-0000-0000-0000-000000000001', '00000000-0000-0000-0000-000000000002', 'Yes, early check-in is possible from 11 AM.');
