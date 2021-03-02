CREATE DATABASE IF NOT EXISTS
apirest;
use apirest;

CREATE TABLE IF NOT EXISTS users(
    id SERIAL PRIMARY KEY,
    name VARCHAR(40),
    email TEXT
);

INSERT INTO users (name, email) VALUES
('joe', 'joe@gmail.com'),
('joana', 'joana@gmail.com');
