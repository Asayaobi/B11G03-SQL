--Query to create users table
CREATE TABLE users(
	user_id serial PRIMARY KEY,
	first_name VARCHAR(50) NOT NULL,
	last_name VARCHAR(50),
	profile_pic VARCHAR(255),
	email VARCHAR(50) NOT NULL,
	password VARCHAR(50) NOT NULL
);

--Query to create users register
INSERT INTO users (
	first_name, 
	last_name,
	email,
	password,
	profile_pic)
VALUES 
	('John',
	'Smith',
	'john.smith@mail.com',
	'password',
	'https://randomuser.me/api/portraits/men/68.jpg'
	)