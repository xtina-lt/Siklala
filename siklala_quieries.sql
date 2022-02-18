--------------------------------------
--        #  XTINA.CODES  #         --
--   INSERT INTO table() VALUE()    --
--  UPDATE table SET table.id = 'y' --
--      DELETE FROM table WHERE     --
--           WHERE id = #           --
--        SELECT * FROM table       --
--       GROUP BY column DESC       --
--          ORDER BY column         --
--------------------------------------

-- # * customers where city_id = 312
-- # return: first_name, last_name, email, address
-- SELECT CONCAT_WS(', ', last_name, first_name) AS name, email, address FROM customer
-- JOIN address ON address.address_id = customer.address_id
-- WHERE city_id = 312


-- # * comedy films
-- # return: title, descriptionm release year, rating, special fatures, genre(category)
-- SELECT title, description, release_year, rating, special_features, category.name FROM film
-- JOIN film_category ON film.film_id = film_category.film_id
-- JOIN category ON category.category_id = film_category.category_id


-- # * films 
-- # joined by actor_id = 5
-- # return: actor_id, actor name, film title, description, release year
-- SELECT actor.actor_id, CONCAT_WS(', ', last_name, first_name) AS actor, title, description, release_year FROM film
-- JOIN film_actor ON film_actor.film_id = film_actor.film_id
-- JOIN actor ON actor.actor_id = film_actor.actor_id


-- # * customers where store_id = 1
-- # and inside cities [1,42,312,459]
-- # return: customer first name, last name, email, address
-- SELECT CONCAT_WS(', ', last_name, first_name) AS customer, email, address FROM customer
-- JOIN store ON store.store_id = customer.store_id
-- JOIN address ON address.address_id = customer.address_id
-- WHERE address.city_id = 1 OR address.city_id = 42 
/


-- # * films where rating = 'g' and special feature = 'behind the scenes'
-- # joined by actor id= 15
-- # return: film title, description, reelease year, rating, special feature
-- SELECT CONCAT_WS(', ', actor.last_name, actor.first_name) AS actor, title, description, release_year, rating, special_features FROM film
-- JOIN film_actor ON film.film_id = film_actor.film_id
-- JOIN actor ON actor.actor_id = film_actor.actor_id
-- WHERE actor.actor_id = 15 
-- AND rating = 'G' AND special_features = 'Behind the Scenes'


-- # actors joined in film id = 369
-- # return: film_id title, actor_id, actor_name
SELECT film.film_id, title, actor.actor_id, CONCAT_WS(', ', actor.last_name, actor.first_name) AS actor FROM film
JOIN film_actor ON film.film_id = film_actor.film_id
JOIN actor ON actor.actor_id = film_actor.actor_id
WHERE film.film_id = 369


-- # * films joindy by SANDRA KILMER
-- # return: film title, description, reelease year, rating, special features, genra (category), actors first and last name
-- SELECT title, description, release_year, rating, special_features, FROM film
-- SELECT title, description, release_year, rating, special_features, category.name AS category FROM film
-- JOIN film_actor ON film.film_id = film_actor.film_id
-- JOIN actor ON actor.actor_id = film_actor.actor_id
-- -- complete another many to many join, start = film table
-- JOIN film_category ON film.film_id = film_category.film_id
-- JOIN category ON category.category_id = film_category.category_id
-- WHERE actor.first_name = 'SANDRA' AND actor.last_name = 'KILMER'