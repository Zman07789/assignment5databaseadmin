--By Zackary Pauslson

-- Answer For Problem 1
INSERT INTO Movie (id, title, year, length, genre, rating, earnings_rank)
VALUES (4846340, 'Hidden Figures', 2016, 127, 'BDH', 'PG', NULL);

SELECT id FROM Actor WHERE name = 'Taraji P. Henson';
SELECT id FROM Actor WHERE name = 'Janelle Monae';
SELECT id FROM Actor WHERE name = 'Octavia Spencer';

INSERT INTO MovieActor (movie_id, actor_id) VALUES (4846340, 'ID_OF_TARAJI_P_HENSON');
INSERT INTO MovieActor (movie_id, actor_id) VALUES (4846340, 'ID_OF_JANELLE_MONAE');
INSERT INTO MovieActor (movie_id, actor_id) VALUES (4846340, 'ID_OF_OCTAVIA_SPENCER');

--answer for problem 2
SELECT earnings_rank, rating, length
FROM Movie
WHERE title = 'Incredibles 2';

--Answer For Problem 3
SELECT name, place_of_birth, date_of_birth
FROM Actor
WHERE name IN ('Lady Gaga', 'Melissa McCarthy');

-- Answer For Problem 4
SELECT title, year
FROM Movie
WHERE rating = 'G' AND year >= 2010;

--Answer For Problem 5
SELECT AVG(earnings_rank) AS average_earnings_rank
FROM Movie
WHERE rating = 'G' AND earnings_rank <= 200;

-- Answer For Problem 6, Honestly this one had to be the hardest to figure out.
SELECT year, COUNT(*) AS num_of_oscars
FROM Oscar
GROUP BY year
HAVING num_of_oscars != 6;

-- Answer For Problem 7
SELECT title, length
FROM Movie
WHERE title LIKE '%Star Wars%'
ORDER BY length ASC
LIMIT 1;


