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