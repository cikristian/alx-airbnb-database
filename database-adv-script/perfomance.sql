SELECT 
    b.booking_id,
    b.booking_date,
    b.check_in_date,
    b.check_out_date,
    b.status AS booking_status,
    u.user_id,
    u.name AS user_name,
    u.email,
    u.created_at AS user_created_at,
    p.property_id,
    p.name AS property_name,
    p.location,
    p.price AS property_price,
    pay.payment_id,
    pay.amount,
    pay.payment_date,
    pay.method AS payment_method
FROM bookings b
JOIN users u ON b.user_id = u.user_id
JOIN properties p ON b.property_id = p.property_id
LEFT JOIN payments pay ON b.booking_id = pay.booking_id
WHERE b.status = 'confirmed'
  AND p.location = 'Kigali';


CREATE INDEX idx_bookings_user_id ON bookings(user_id);
CREATE INDEX idx_bookings_property_id ON bookings(property_id);
CREATE INDEX idx_payments_booking_id ON payments(booking_id);
