SELECT type, COUNT(*) AS total_titles
FROM netflix
GROUP BY type
ORDER BY total_titles DESC;

SELECT year_added, COUNT(*) AS titles_added
FROM netflix
GROUP BY year_added
ORDER BY year_added;

SELECT country, COUNT(*) AS total_titles
FROM netflix
GROUP BY country
ORDER BY total_titles DESC
LIMIT 10;

SELECT listed_in AS genre, COUNT(*) AS total_titles
FROM netflix
GROUP BY listed_in
ORDER BY total_titles DESC
LIMIT 10;

SELECT year_added, type, COUNT(*) AS total_titles
FROM netflix
GROUP BY year_added, type
ORDER BY year_added, type;

SELECT rating, COUNT(*) AS total_titles
FROM netflix
GROUP BY rating
ORDER BY total_titles DESC;

SELECT AVG(duration_value) AS avg_movie_minutes
FROM netflix
WHERE type = 'Movie' AND duration_type = 'min';

SELECT AVG(duration_value) AS avg_seasons
FROM netflix
WHERE type = 'TV Show' AND duration_type = 'Season';

SELECT director, COUNT(*) AS total_titles
FROM netflix
WHERE director != 'Unknown'
GROUP BY director
ORDER BY total_titles DESC
LIMIT 10;

SELECT listed_in, COUNT(*) AS recent_titles
FROM netflix
WHERE year_added >= 2020
GROUP BY listed_in
ORDER BY recent_titles DESC
LIMIT 10;




