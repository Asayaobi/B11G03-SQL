-- Query to insert 1 row in the 'bookings' table

INSERT INTO bookings (
	booking_id,
	guest_id,
	house_id,
	check_in_date,
	check_out_date,
	total_price
)
VALUES (
	'1',
	'1',
	'1',
	'2001.01.12',
	'2001.01.22',
	'345'
);

-- Query to read many rows from the 'bookings' table

SELECT bookings.*, houses.location, houses.bathrooms, houses.bedrooms
FROM 
	bookings 
LEFT JOIN 
	houses ON bookings.house_id = houses.house_id
WHERE 
	guest_id = 2
GROUP BY 
	bookings.booking_id, houses.location, houses.bathrooms, houses.bedrooms;
