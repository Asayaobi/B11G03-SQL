-- Query to create the reviews table
CREATE TABLE reviews (
	review_id SERIAL PRIMARY KEY,
	house_id INT REFERENCES houses(house_id),
	review_date TIMESTAMP NOT NULL,
	rating INT NOT NULL,
	review_tex TEXT
);