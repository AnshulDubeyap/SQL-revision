USE startersql;

 ALTER TABLE users ADD COLUMN referred_by_id INT;
 
UPDATE users SET referred_by_id = 1 WHERE id IN (1, 3, 13, 15, 16, 5, 18);
UPDATE users SET referred_by_id = 2 WHERE id = 4;

SELECT a.id, a.name AS user_name, b.name AS referred_name FROM users a LEFT JOIN users b ON a.referred_by_id = b.id;

CREATE VIEW high_salary_users AS
SELECT id, name, salary
FROM users
WHERE salary > 70000;

UPDATE users
SET salary = 72000
WHERE id=3;

 SELECT * FROM high_salary_users;