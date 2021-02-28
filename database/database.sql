CREATE DATABASE IF NOT EXISTS
apirest;
use apirest;

CREATE TABLE IF NOT EXISTS users(
    id SERIAL PRIMARY KEY,
    nome VARCHAR(40),
    email TEXT
);

INSERT INTO user (name, email) VALUES
('joe', 'joe@gmail.com'),
('joana', 'joana@gmail.com');