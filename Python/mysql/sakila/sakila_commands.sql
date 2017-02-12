SELECT customer.first_name, customer.last_name, customer.email, address.address
FROM customer
left join address on customer.address_id = address.address_id
where address.city_id = 312;

select film.title, film.description, film.release_year, film.rating, film.special_features, category.name
from category
left join film_category on category.category_id = film_category.category_id
left join film on film_category.film_id = film.film_id
where category.name = "Comedy";

select film.title, film.description, film.release_year, film.film_id, actor.first_name, actor.last_name
from film
left join film_actor on film.film_id = film_actor.film_id
left join actor on film_actor.actor_id = actor.actor_id
where film_actor.actor_id = 5;

select customer.first_name, customer.last_name, customer.email, address.address
from customer
left join address on customer.address_id = address.address_id
where customer.store_id = 1
and address.city_id in (1,42,312,459);

select film.title, film.description, film.release_year, film.special_features, film.rating
from film
left join film_actor on film.film_id = film_actor.film_id
where actor_id = 15 
and film.rating = "G"
and film.special_features like "%behind the scenes%";

SELECT actor.first_name, actor.last_name, film.film_id, film.title, film_actor.actor_id
FROM actor
LEFT JOIN film_actor ON actor.actor_id = film_actor.actor_id
left join film on film.film_id = film_actor.film_id
WHERE film_actor.film_id = 369;

select film.title, film.description, film.release_year, film.rating, film.special_features, category.name
from film
left join film_category on film.film_id = film_category.film_id
left join category on film_category.category_id = category.category_id
where category.name = "Drama"
and film.rental_rate = 2.99;

SELECT film.title, film.description, film.release_year, film.rating, film.special_features, category.name as genre, actor.first_name, actor.last_name
FROM film 
LEFT JOIN film_actor ON film_actor.film_id = film.film_id
LEFT JOIN actor ON actor.actor_id = film_actor.actor_id
LEFT JOIN film_category ON film_category.film_id = film.film_id
LEFT JOIN category ON category.category_id = film_category.category_id
WHERE actor.first_name = 'SANDRA'
AND actor.last_name = 'KILMER'
AND category.name = 'Action';