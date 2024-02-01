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

--Query to read users profile
SELECT 
	profile_pic, 
	first_name, 
	last_name, 
	email
FROM 
	users
WHERE
    user_id = 1

--Query to read users login
SELECT 
	email,
	password
FROM
	users