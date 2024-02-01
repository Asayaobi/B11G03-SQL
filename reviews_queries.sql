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