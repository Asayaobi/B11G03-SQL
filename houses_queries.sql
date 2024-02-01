-- QUERIES TO CREATE HOUSE
-- Next query creates a house in house table

INSERT INTO houses (
	location,
	bedrooms,
	bathrooms,
	price_per_night,
	description,
	host_id)
VALUES (
	'Koh Phangan, Thailand',
	3,
	1,
	20,
	'lorem ipsum lorem ipsum',
	1);

-- QUERIES TO READ HOUSE (SINGLE PAGE) 
-- Query to get house, user and pics

SELECT houses.*, users.first_name, users.last_name, users.profile_pic, house_pics.url 
FROM
	houses
LEFT JOIN users ON houses.host_id = users.user_id
LEFT JOIN house_pics ON houses.house_id = house_pics.house_id
WHERE
	houses.house_id = 1;
	
	
-- Query to get the reviews
SELECT reviews.*, users.first_name, users.last_name, users.profile_pic
FROM 
	reviews
INNER JOIN users ON reviews.reviewer_id = users.user_id;
WHERE
	houses.house_id = 1;

-- Query to update houses
UPDATE houses
	SET location = 'Bali',
		 bedrooms = 4,
		 bathrooms = 1,
		price_per_night = 78,
		 description = 'NICE'
	WHERE house_id = 1;

-- QUERIES TO DELETE HOUSE
-- Note: not deleting the booking related to houses. We will manage that later with API
DELETE FROM reviews
WHERE house_id = 1;
DELETE FROM house_pics
WHERE house_id = 1;
DELETE FROM houses
WHERE house_id = 1;

--QUERIES TO READ ALL HOUSES (LIST)
-- Get ALL Houses

SELECT 
	house_id, location, bathrooms, bedrooms, price_per_night
FROM 
	houses
	
-- Get one picture from each house

SELECT 
	house_id,
	url
FROM 
	house_pics
WHERE
	house_id = 1;

-- Get information from reviews for each house

SELECT 
	AVG(reviews.rating)::NUMERIC(10,2), 
	COUNT(reviews.review_id)
FROM 
	reviews
WHERE
	house_id = 1;