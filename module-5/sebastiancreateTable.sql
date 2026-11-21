
-- Name: Sebastian Siqueiros
-- Course: CSD-430 Server-Side Development
-- Module: 5.2 - CRUD-READ, JDBC & JavaBeans
-- File: sebastiancreateTable.sql
--
-- Purpose:
-- This file creates the movie database table for the CSD-430 project.
-- The table stores information about movies and will later be used
-- by a JavaBean and JSP pages to retrieve and display movie records.
--
-- Table Fields:
-- movie_id: Unique number assigned to each movie (Primary Key).
-- title: Name of the movie.
-- director: Name of the movie's director.
-- genre: Category or type of movie.
-- release_year: Year the movie was released.
-- rating: Movie rating on a scale from 0 to 10.

-- Create the required database if it does not already exist.
CREATE DATABASE IF NOT EXISTS CSD430;

-- Select the database for the project.
USE CSD430;

-- Create the movie table with six fields.
CREATE TABLE IF NOT EXISTS sebastianmoviesdata (
    movie_id INT NOT NULL AUTO_INCREMENT,
    title VARCHAR(100) NOT NULL,
    director VARCHAR(100) NOT NULL,
    genre VARCHAR(50) NOT NULL,
    release_year INT NOT NULL,
    rating DECIMAL(3,1) NOT NULL,
    PRIMARY KEY (movie_id)
);
