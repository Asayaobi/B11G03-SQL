--Query to create house_pics table
CREATE TABLE house_pics(
	house_pic_id serial PRIMARY KEY,
	house_id INT REFERENCES houses(house_id) NOT NULL,
	url VARCHAR(255) NOT NULL
);

--Query to update house pictures
UPDATE house_pics
	SET url = 'https://randomuser.me/api/portraits/women/0.jpg'
	WHERE house_pic_id = 66 
	