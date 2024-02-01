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

--Read the reviews
SELECT
	users.profile_pic,
	reviews.review_date,
	users.first_name,
	users.last_name,
	reviews.rating,
	reviews.review_text
FROM
	users
LEFT JOIN 
	reviews ON reviews.reviewer_id = users.user_id
WHERE
	reviews.house_id = 1