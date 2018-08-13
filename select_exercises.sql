USE codeup_test_db;


-- The name of all albums by Pink Floyd.
-- SELECT name FROM albums
-- WHERE artist = 'Pink Floyd';

-- The year Sgt. Pepper's Lonely Hearts Club Band was released
-- SELECT release_date FROM albums
-- WHERE record_name = 'Sgt. Pepper''s Lonely Hearts Club Band';

-- The genre for Nevermind
-- SELECT genre FROM albums
-- WHERE record_name = 'Nevermind';

-- Which albums were released in the 1990s
-- SELECT record_name FROM albums
-- WHERE release_date BETWEEN 1990 AND 1999;

-- Which albums had less than 20 million certified sales
-- SELECT record_name FROM albums
-- WHERE sales < 20;

-- All the albums with a genre of "Rock". Why do these query results not include
-- albums with a genre of "Hard rock" or "Progressive rock"?
-- SELECT record_name FROM albums
-- WHERE genre = '%rock%';



