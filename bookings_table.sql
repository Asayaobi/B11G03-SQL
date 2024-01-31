CREATE TABLE bookings (
	booking_id SERIAL PRIMARY KEY,
	guest_id INT REFERENCES users(user_id) NOT NULL,
	house_id INT REFERENCES houses(house_id) NOT NULL,
	check_in_date DATE NOT NULL,
	check_out_date DATE NOT NULL,
	total_price INT NOT NULL
)