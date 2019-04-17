CREATE DATABASE db_links;

USE db_links;

-- TABLE USER
-- all pasword wil be encrypted using SHA1
CREATE TABLE users (
  id INT(11) NOT NULL AUTO_INCREMENT,
  username VARCHAR(16) NOT NULL,
  password VARCHAR(60) NOT NULL,
  fullname VARCHAR(100) NOT NULL,
  CONSTRAINT primary key(id)
);

ALTER TABLE users
  ADD PRIMARY KEY (id);

DESCRIBE users;

INSERT INTO users (id, username, password, fullname) 
  VALUES (null, 'john', 'password1', 'John Carter');

SELECT * FROM users;

-- LINKS TABLE
CREATE TABLE links (
  id INT(11) auto_increment,
  title VARCHAR(150) NOT NULL,
  url VARCHAR(255) NOT NULL,
  description TEXT,
  user_id INT(11),
  created_at timestamp NOT NULL DEFAULT current_timestamp,
  constraint pk_links primary key(id),
  CONSTRAINT fk_user FOREIGN KEY(user_id) REFERENCES users(id)
);

ALTER TABLE links
  ADD PRIMARY KEY (id);

ALTER TABLE links
  MODIFY id INT(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT = 2;

DESCRIBE links;