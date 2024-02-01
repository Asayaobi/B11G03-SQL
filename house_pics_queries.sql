-- Query creates the related pics in house_pics table

INSERT INTO house_pics (
	house_id, 
	url)
VALUES (
	1,
	'photo1.png');

-- Query to Update Pics

UPDATE house_pics
    SET url = 'New URL'
 WHERE house_pic_id = 1;  


-- Query to Delete Pics

DELETE FROM house_pics
WHERE house_pic_id = 1;