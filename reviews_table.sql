-- Query to create the reviews table
CREATE TABLE reviews (
	review_id SERIAL PRIMARY KEY,
	house_id INT REFERENCES houses(house_id) NOT NULL,
	reviewer_id INT REFERENCES users(user_id) NOT NULL,
	review_date TIMESTAMP NOT NULL,
	rating INT NOT NULL,
	review_tex TEXT
);