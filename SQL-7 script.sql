SELECT * FROM users;

SELECT * FROM address;

SELECT users.name, address.city, address.state FROM users INNER JOIN address ON users.id = address.user_id;

SELECT users.name, address.city FROM users LEFT JOIN address ON users.id = address.user_id

SELECT users.name, address.city FROM users RIGHT JOIN address ON users.id = address.user_id;