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
)

--QUERIES TO READ A BOOKING
-- Get Bookings & House Information

SELECT bookings.*, houses.location, houses.bathrooms, houses.bedrooms
FROM 
	bookings
LEFT JOIN 
	houses ON bookings.house_id = houses.house_id
WHERE 
	guest_id = 2
GROUP BY 
	bookings.booking_id, houses.location, houses.bathrooms, houses.bedrooms;
	
-- Get one picture from the house
SELECT house_pics.url
FROM 
	house_pics
LEFT JOIN 
	bookings ON bookings.house_id = house_pics.house_id 
	AND bookings.guest_id = 2
LIMIT 1;

-- Get information from reviews

SELECT AVG(reviews.rating)::NUMERIC(10,2), COUNT(reviews.review_id)
FROM 
	reviews
LEFT JOIN 
	bookings ON bookings.house_id = reviews.house_id
	AND guest_id = 2;
