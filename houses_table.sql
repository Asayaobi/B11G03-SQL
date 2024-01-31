-- Query to create houses table
CREATE TABLE houses (
	house_id SERIAL PRIMARY KEY,
	city VARCHAR(50) NOT NULL,
	country VARCHAR(50) NOT NULL,
	bedrooms INT NOT NULL,
	bathrooms  INT NOT NULL,
	price_per_night INT  NOT NULL,
	description TEXT,
	host_id INT REFERENCES users(user_id)
);