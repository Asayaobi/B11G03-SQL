--Query to create review
INSERT INTO reviews(
	house_id,
	reviewer_id,
	review_date,
	rating,
	review_text
)
VALUES
	(1,
	1,
	'2024-02-01 10:00:00',
	5,
	'Great place to stay')

--Query to read reviews
--Total reviews
SELECT 
	COUNT(review_id)
FROM 
	reviews
WHERE 
	house_id = 1

--Average rating
SELECT
	AVG(reviews.rating)
FROM
	reviews
WHERE
	house_id = 1

--Read the reviews
SELECT
	reviews.review_date,
	reviews.rating,
	reviews.review_text,
	users.profile_pic,
	users.first_name,
	users.last_name
FROM
	users
INNER JOIN 
	reviews ON reviews.reviewer_id = users.user_id
WHERE
	reviews.house_id = 1