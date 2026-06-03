-- Movie Review Database Project

CREATE DATABASE movie_review_db;
USE movie_review_db;

CREATE TABLE users (
  user_id INT AUTO_INCREMENT PRIMARY KEY,
  username VARCHAR(50) NOT NULL,
  email VARCHAR(100),
  join_date DATE
);

CREATE TABLE genres (
  genre_id INT AUTO_INCREMENT PRIMARY KEY,
  genre_name VARCHAR(50)
);

CREATE TABLE movies (
  movie_id INT AUTO_INCREMENT PRIMARY KEY,
  title VARCHAR(100) NOT NULL,
  release_year INT,
  genre_id INT,
  FOREIGN KEY (genre_id) REFERENCES genres(genre_id)
);

CREATE TABLE reviews (
  review_id INT AUTO_INCREMENT PRIMARY KEY,
  user_id INT,
  movie_id INT,
  rating DECIMAL(2,1),
  review_text TEXT,
  review_date DATE,
  FOREIGN KEY (user_id) REFERENCES users(user_id),
  FOREIGN KEY (movie_id) REFERENCES movies(movie_id)
);

INSERT INTO genres (genre_name) VALUES
('Action'), ('Drama'), ('Comedy'),
('Thriller'), ('Romance');

INSERT INTO movies (title, release_year, genre_id) VALUES
('RRR', 2022, 1),
('3 Idiots', 2009, 3),
('Dangal', 2016, 2),
('KGF Chapter 2', 2022, 1),
('Drishyam', 2013, 4),
('Dilwale Dulhania Le Jayenge', 1995, 5),
('Andhadhun', 2018, 4),
('PK', 2014, 3);

INSERT INTO users (username, email, join_date) VALUES
('sujitha_k', 'sujitha@gmail.com', '2024-01-15'),
('rahul_m', 'rahul@gmail.com', '2024-02-20'),
('priya_s', 'priya@gmail.com', '2024-03-10'),
('arjun_r', 'arjun@gmail.com', '2024-04-05'),
('neha_t', 'neha@gmail.com', '2024-05-12');

INSERT INTO reviews (user_id, movie_id, rating, review_text, review_date) VALUES
(1, 1, 9.5, 'Fantastic movie!', '2024-01-20'),
(1, 2, 9.0, 'All time classic', '2024-01-25'),
(2, 1, 8.5