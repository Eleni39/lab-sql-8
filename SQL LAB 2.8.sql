-- Q1: Write a query to display for each store its store ID, city, and country.
SELECT * FROM store;
SELECT *
FROM sakila.store s
JOIN sakila.city c
INNER JOIN sakila.country
ON s.store_id = c.city_id;

-- Q2: Write a query to display how much business, in dollars, each store brought in.
SELECT * FROM store;
SELECT * FROM payment; 

SELECT st.store_id, COUNT(DISTINCT pt.amount) AS amount
FROM sakila.store st
JOIN sakila.payment pt
GROUP BY store_id, amount; -- I'm unsure of how to get the dollars amount. 

-- Q3: Which film categories are longest?

SELECT * FROM category;
SELECT * FROM film_category;

SELECT *
FROM sakila.category c
JOIN sakila.film_category f
ON c.category_id = f.category_id
ORDER BY c.category_id ASC;

-- Q4: Display the most frequently rented movies in descending order.

SELECT *
FROM sakila.rental r
JOIN sakila.customer c
ON r.rental_id = c.customer_id
ORDER BY r.rental_id DESC;

-- Q5: List the top five genres in gross revenue in descending order.

SELECT *
FROM sakila.rental r
JOIN sakila.payment p
ON r.rental_id = p.payment_id
ORDER BY r.rental_id DESC
LIMIT 5;

-- Q6: Is "Academy Dinosaur" available for rent from Store 1?
SELECT * FROM film;
SELECT * FROM store;
SELECT * FROM inventory;

SELECT *
FROM sakila.film f
JOIN sakila.store s
INNER JOIN sakila.inventory i
ON f.title = f.title
GROUP BY sakila.store = 1;

-- Q7: Get all the pairs that worked together. I need some help with this one. 



