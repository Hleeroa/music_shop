SELECT treck_name, treck_length
FROM trecks 
WHERE treck_length  = (SELECT MAX(treck_length) FROM trecks);

SELECT treck_name 
FROM trecks  
WHERE treck_length > '00:03:30';

SELECT collection_name
FROM collections 
WHERE release_date BETWEEN '2018-01-01' AND '2020-12-31';

SELECT musician_name 
FROM musicians 
WHERE musician_name NOT LIKE '% %';

SELECT treck_name
FROM trecks
WHERE LOWER(treck_name) LIKE '%my%';

SELECT genre_id, COUNT(*)  FROM genre_musician 
GROUP BY genre_id; 

SELECT album , COUNT(*) FROM trecks t 
LEFT JOIN albums a ON t.album = a.album_id 
WHERE release_date BETWEEN '2019-01-01' AND '2020-12-31'
GROUP BY album;

SELECT AVG(treck_length), album  FROM trecks
GROUP BY album 
ORDER BY album;

SELECT musician_name, release_date  FROM musicians m 
JOIN musician_album ma ON m.musician_id = ma.musician_id 
JOIN albums a ON a.album_id = ma.album_id 
WHERE release_date NOT BETWEEN '2020-01-01' AND '2020-12-31'
ORDER BY release_date;

SELECT DISTINCT collection_name FROM collections c 
JOIN treck_collection tc ON c.collection_id = tc.collection 
JOIN trecks t ON tc.terck = t.trecks_id 
JOIN albums a ON a.album_id = t.album 
JOIN musician_album ma ON a.album_id = ma.album_id  
WHERE musician_id = 1;