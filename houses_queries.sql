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

-- Next query creates the related pics in house_pics table

INSERT INTO house_pics (
	house_id, 
	url)
VALUES (
	1,
	'photo1.png');

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