-- List the title, description and release year of all film with a PG-13 rating.

SELECT title, description, release_year 
FROM film 
WHERE rating = 'PG-13';
