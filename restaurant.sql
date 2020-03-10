-- CREATE DATABASE restaurant;
-- CREATE TABLE restaurant(
-- id SERIAL NOT NULL PRIMARY KEY,
--     name VARCHAR,
--     distance REAL NOT NULL,
--     stars INTEGER,
--     category VARCHAR,
--     favoriteDish VARCHAR,
--     doesTakeOut BOOLEAN DEFAULT FALSE,
--     lastTimeYouAteThere  DATE
-- );

-- INSERT INTO restaurant VALUES
-- (DEFAULT, 'Spring Creak', '11', 5, 'BBQ', 'Brisket blend', TRUE, '2020-02-09'),
-- (DEFAULT, 'Dennys', '9', 2, 'dinner', 'salmon', TRUE, '2019-02-07'),
-- (DEFAULT, 'Marys place', '34', 5, 'seafood', '', FALSE, '2019-10-09'),
-- (DEFAULT, 'Sushi hana', '13', 5, 'japanese cusine', ' sushi set 1', TRUE, '2019-09-19'),
-- (DEFAULT, 'Mambo seafood', '10', 4, 'mexican seafood', 'grilled shrimp', TRUE, '2019-09-05'),
-- (DEFAULT, 'Texas tradition', '12', 5, 'modern american', 'steak', TRUE, '2018-10-25'),
-- (DEFAULT, 'Aidar', '17', 4, 'modern american', 'vegi bowl', TRUE, '2020-03-08'),
-- (DEFAULT, 'The Oaks Kitchen', '17', 4, 'modern american', 'oaks burger', FALSE, '2020-03-01'),
-- (DEFAULT, 'Kura sushi', '9', 4, 'japanese cusine', 'otoro salmon', FALSE, '2018-04-06'),
-- (DEFAULT, 'Rodeo Goat ', '7', 4, 'modern american', 'goat burger', TRUE, '2020-02-28');


-- ///////PostgreSQL Exercises///////
-- The names of the restaurants that you gave a 5 stars to
-- SELECT *  FROM restaurant WHERE stars=5;

-- The favorite dishes of all 5-star restaurants
-- SELECT favoriteDish FROM  restaurant WHERE stars=5;

-- The the id of a restaurant by a specific restaurant name, say 'Moon Tower'
-- SELECT name from restaurant WHERE id =3;

-- restaurants in the category of 'BBQ'
-- SELECT * FROM restaurant WHERE category ='BBQ';

-- restaurants that do take out
-- SELECT * FROM restaurant WHERE doesTakeOut='TRUE';

-- restaurants that do take out and is in the category of 'BBQ'
-- SELECT  name FROM restaurant WHERE doesTakeOut='TRUE' AND category='BBQ';

-- restaurants within 2 miles
-- SELECT name FROM restaurant WHERE  distance<2;
-- SELECT name FROM restaurant WHERE  distance<10;


-- restaurants you haven't ate at in the last week
-- SELECT name from restaurant WHERE lastTimeYouAteThere<'2020-03-01';

-- restaurants you haven't ate at in the last week and has 5 stars
-- SELECT name from restaurant WHERE lastTimeYouAteThere<'2020-03-01' AND stars=5;



-- ////////Aggregation and Sorting Queries/////////

-- list restaurants by the closest distance.
-- SELECT * FROM restaurant ORDER By distance ASC;

-- list the top 2 restaurants by distance.
-- SELECT * FROM restaurant ORDER By distance ASC LIMIT 2;


-- list the top 2 restaurants by stars.
-- SELECT * FROM restaurant ORDER BY stars DESC;

-- list the top 2 restaurants by stars where the distance is less than 2 miles.
-- SELECT * FROM restaurant WHERE distance<10 ORDER BY stars DESC;

-- count the number of restaurants in the db.
-- SELECT count(*) FROM restaurant;

-- count the number of restaurants by category.
-- SELECT category, COUNT(*) FROM restaurant GROUP BY category;

-- get the average stars per restaurant by category.
--  SELECT AVG(stars) AS average_stars FROM restaurant;
 

-- get the max stars of a restaurant by category.
SELECT MAX(stars) AS max_stars FROM restaurant;