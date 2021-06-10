SELECT unit_price FROM invoice_line
WHERE unit_price > 0.99;

SELECT i.invoice_date, c.first_name, c.last_name, i.total
FROM invoice i
JOIN customer c
ON i.customer_id = c.customer_id;

SELECT c.first_name "Customer First Name", c.last_name "Customer Last Name", e.first_name "Employee First Name", e.last_name "Employee First Name"
FROM customer c
JOIN employee e
ON c.support_rep_id = e.employee_id;

SELECT al.title, ar.name FROM album al
JOIN artist ar
ON ar.artist_id = al.artist_id;

SELECT pt.track_id, p.name FROM playlist_track pt
JOIN playlist p 
ON p.playlist_id = pt.playlist_id
WHERE p.name = 'Music';

SELECT t.name FROM track t
JOIN playlist_track pt
ON t.track_id = pt.track_id
WHERE pt.playlist_id = 5;

SELECT t.name, p.name FROM track t
JOIN playlist_track pt
ON t.track_id = pt.track_id
JOIN playlist p
ON pt.playlist_id = p.playlist_id;

SELECT t.name, al.title, g.name "genre name" FROM track t
JOIN album al
ON t.album_id = al.album_id
JOIN genre g
ON t.genre_id = g.genre_id
WHERE g.name = 'Alternative & Punk';