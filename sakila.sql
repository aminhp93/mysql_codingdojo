1.

SELECT city.city_id, customer.first_name, customer.last_name, customer.email, address.address
FROM city
LEFT JOIN address
ON city.city_id = address.city_id
LEFT JOIN customer
ON address.address_id = customer.address_id
WHERE city.city_id = 312;

2.

SELECT film.title, film.description, film.release_year, film.rating, film.special_features, category.name AS genre
FROM film
LEFT JOIN film_category
ON film.film_id = film_category.film_id
LEFT JOIN category
ON category.category_id = category.category_id
WHERE category.name = 'comedy';

3.

SELECT actor.actor_id, CONCAT(actor.first_name, actor.last_name) AS actor_name, film.title, film.description, film.release_year
FROM film
LEFT JOIN film_actor
ON film.film_id = film_actor.film_id
LEFT JOIN actor
ON film_actor.actor_id = actor.actor_id
WHERE actor.actor_id = 5;

4.

SELECT customer.first_name, customer.last_name, customer.email, address.address
FROM city
LEFT JOIN address
ON city.city_id = address.city_id
LEFT JOIN store
ON address.address_id = store.address_id
LEFT JOIN customer
ON store.store_id = customer.store_id
WHERE store.store_id = 1 AND (city.city_id = 1 OR city.city_id = 42 OR city.city_id = 312 OR city.city_id = 459);

5.

SELECT film.title, film.description, film.release_year, film.rating, film.special_features
FROM film
LEFT JOIN film_actor
ON film.film_id = film_actor.film_id
LEFT JOIN actor
ON film_actor.actor_id = actor.actor_id
WHERE film.rating = 'G' AND film.special_features LIKE '%behind the scenes%' AND actor.actor_id =15;

6.

SELECT film.film_id, actor.actor_id, CONCAT(actor.first_name, actor.last_name) AS actor_name, film.title
FROM film
LEFT JOIN film_actor
ON film.film_id = film_actor.film_id
LEFT JOIN actor
ON film_actor.actor_id = actor.actor_id
WHERE film.film_id = 369;

7.

SELECT film.rental_rate, film.title, film.description, film.release_year, film.rating, film.special_features, category.name AS genre
FROM film
LEFT JOIN film_category
ON film.film_id = film_category.film_id
LEFT JOIN category
ON film_category.category_id = category.category_id
WHERE film.rental_rate = 2.99;

8.

SELECT category.name AS genre, film.title, film.description, film.release_year, film.special_features, category.name AS genre, actor.first_name, actor.last_name
FROM category
LEFT JOIN film_category
ON category.category_id = film_category.category_id
LEFT JOIN film
ON film_category.film_id = film.film_id
LEFT JOIN film_actor
ON film.film_id = film_actor.film_id
LEFT JOIn actor
ON film_actor.actor_id = actor.actor_id
WHERE category.name = 'action' AND actor.first_name = 'SANDRA' AND actor.last_name = 'KILMER';
