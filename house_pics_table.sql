-- Query to create 'house_pics' table

CREATE TABLE house_pics(
	house_pics_id serial PRIMARY KEY,
	house_id INT REFERENCES houses(house_id) NOT NULL,
	url VARCHAR(255) NOT NULL
);
	