SELECT customer.first_name, customer.last_name, customer.email, address.address
FROM customer
left join address on customer.address_id = address.address_id
where address.city_id = 312