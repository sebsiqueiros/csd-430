
-- Name: Sebastian Siqueiros
-- Course: CSD-430 Server-Side Development
-- Module: 5.2 - CRUD-READ, JDBC & JavaBeans
-- File: sebastianpopulateTable.sql
--
-- Purpose:
-- This file adds 10 movie records to the sebastianmoviesdata table.
-- Each record includes the movie title, director, genre,
-- release year, and rating.
--
-- The movie_id field is not included in the INSERT statements
-- because MariaDB automatically assigns a unique ID to each movie.
--
-- These records will be used in the next project assignment
-- when a JavaBean retrieves movie information from the database.

-- Select the required database.
USE CSD430;

-- Insert 10 movie records into the table.
INSERT INTO sebastianmoviesdata
(title, director, genre, release_year, rating)
VALUES
('The Dark Knight', 'Christopher Nolan', 'Action', 2008, 9.0),
('Inception', 'Christopher Nolan', 'Sci-Fi', 2010, 8.8),
('Forrest Gump', 'Robert Zemeckis', 'Drama', 1994, 8.8),
('The Matrix', 'Lana and Lilly Wachowski', 'Sci-Fi', 1999, 8.7),
('Gladiator', 'Ridley Scott', 'Action', 2000, 8.5),
('Interstellar', 'Christopher Nolan', 'Sci-Fi', 2014, 8.7),
('Jurassic Park', 'Steven Spielberg', 'Adventure', 1993, 8.2),
('Titanic', 'James Cameron', 'Romance', 1997, 7.9),
('The Avengers', 'Joss Whedon', 'Action', 2012, 8.0),
('Avatar', 'James Cameron', 'Sci-Fi', 2009, 7.9);
