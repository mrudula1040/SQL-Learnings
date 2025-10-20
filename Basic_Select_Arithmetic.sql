USE sakila;
-- SELECT--> TO DISPLAY TABLE 
SELECT*FROM actor;

SELECT*FROM actor;
SELECT *FROM payment;
SELECT*FROM customer;


SELECT first_name,last_name 
FROM customer;

-- ARITHMETIC OPERATORS

SELECT 11 * 3 AS Multiply, 11 / 3 AS Divison, 11 % 3 AS Remainder;

SELECT* FROM film;
-- AS -- . Just Another Name of Column

SELECT film_id,title,rental_rate AS rental_rate_USD,
rental_rate * 85 AS rental_rate_inr FROM film;
       
       

