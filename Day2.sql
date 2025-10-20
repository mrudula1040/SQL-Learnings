--  day 2
-- Relational Operator(WHERE)
use sakila;
show tables;
-- find all actor whose id is less than 10
SELECT *FROM actor
WHERE
    actor_id < 10;


-- id is greater  than 10
SELECT  *FROM actor
WHERE
    actor_id > 10;


-- less or is equal to 10
SELECT *FROM actor
WHERE actor_id <= 10;


-- greater or equal to 10
SELECT*FROM actor
WHERE actor_id >= 10;


-- not equal to 10
SELECT *FROM actor
WHERE actor_id != 10;


-- find all actor whose first_name start from penelope
SELECT *FROM actor
WHERE first_name = 'penelope';


-- not penelope
SELECT *FROM actor
WHERE first_name != 'penelope';

-- find all actor first_name is penelope and their id is less than 100

SELECT *FROM actor
WHERE first_name = 'penelope'
        AND actor_id < 100;

-- find all actors whose id is in range of 20 to 30 (>=20 and <=30)
SELECT *FROM actor
WHERE actor_id >= 20 AND actor_id <= 30;

-- find all actor from first_name list(penelope,ED,Rohit,adam)

SELECT *FROM actor
WHERE first_name = 'Penelope'
        AND first_name = 'ED'
        AND first_name = 'Rohit'
        AND first_name = 'Adam';

SELECT *FROM actor
WHERE first_name = 'Penelope'
        OR first_name = 'ED'
        OR first_name = 'Rohit'
        OR first_name = 'Adam';

SELECT *FROM actor
WHERE first_name = 'Rohit' OR actor_id = 500;

SELECT *FROM actor
WHERE first_name = 'Rohit' OR actor_id = 198;

SELECT *FROM actor
WHERE first_name = 'Rohit' AND actor_id = 198;

-- find all actor whose id is in range 20 to 30 >=20 and <=30 using between
SELECT *FROM actor
WHERE actor_id BETWEEN 20 AND 30;

-- find all actors whose id is in range 20 to 30 and their first_name is ED

SELECT *FROM actor
WHERE actor_id BETWEEN 20 AND 30
        AND first_name = 'ED';

SELECT *FROM actor
WHERE actor_id BETWEEN 20 AND 30
        OR first_name = 'ED';

-- find actor between 15 to 20 as well as 50 to 60
SELECT *FROM actor
WHERE actor_id BETWEEN 15 AND 20
        OR actor_id BETWEEN 50 AND 60;

-- find actor between 15 to 20 as well as 50 to 60 as well as 2 to 5

SELECT *FROM actor
WHERE actor_id BETWEEN 15 AND 20
        OR actor_id BETWEEN 50 AND 60
        OR actor - id BETWEEN 2 AND 5;

-- find all actor from first_name list(penelope,ED,Rohit,Adam) same column when we have to fetch values in cluse
SELECT *FROM actor
WHERE first_name = 'Penelope'
        OR first_name = 'ED'
        OR first_name = 'Rohit'
        OR first_name = 'Adam';

SELECT * FROM actor
WHERE first_name IN ('penelope' , 'ed', 'rohit', 'adam');