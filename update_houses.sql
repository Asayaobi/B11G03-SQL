UPDATE houses
	SET location = 'Bali'
	WHERE location = 'Koh Phangan';
	
UPDATE houses
	SET bedrooms = 4
	WHERE bedrooms = 1;
	
UPDATE houses
	SET bathrooms = 1
	WHERE bathrooms = 2;
	
UPDATE houses
	SET price_per_night = price_per_night *1.1
	WHERE price_per_night > 100;
	
UPDATE houses
	SET description = 'NICE'
	WHERE description = 'not nice;
	
UPDATE houses
	SET picture = 'https://randomuser.me/api/portraits/men/82.jpg'
	WHERE picture = 'https://randomuser.me/api/portraits/women/0.jpg'