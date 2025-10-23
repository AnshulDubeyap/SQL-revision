USE startersql;

CREATE TABLE address (
	id INT AUTO_INCREMENT PRIMARY KEY,
	user_id INT,
	street VARCHAR(225),
	city VARCHAR(100),
	state VARCHAR(100),
	pincode VARCHAR(10),
	CONSTRAINT fk_user FOREIGN KEY (user_id) REFERENCES users(id)
);