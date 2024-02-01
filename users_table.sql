--Query to create users table
CREATE TABLE users(
	user_id serial PRIMARY KEY,
	first_name VARCHAR(50) NOT NULL,
	last_name VARCHAR(50),
	profile_pic VARCHAR(255),
	email VARCHAR(50) NOT NULL,
	password VARCHAR(50) NOT NULL
);