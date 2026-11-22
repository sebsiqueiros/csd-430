
package com.sebastian.beans;

import java.io.Serializable;
import java.sql.*;
import java.util.ArrayList;
import java.util.List;

/*
 * CSD-430 Module 6.2
 * MovieBean.java
 *
 * This JavaBean connects to the CSD430 database
 * and retrieves movie records from sebastianmoviesdata.
 */
public class MovieBean implements Serializable {

    private static final long serialVersionUID = 1L;

    // Database connection information.
    private static final String URL =
        "jdbc:mariadb://localhost:3306/CSD430";
    private static final String USER = "student1";

    // Set the database password before compiling.
    private static final String PASSWORD = "pass";

    // Movie information.
    private int movieId;
    private String title;
    private String director;
    private String genre;
    private int releaseYear;
    private double rating;

    public MovieBean() {
    }

    // Get all movie IDs for the dropdown menu.
    public List<Integer> getMovieIds() throws SQLException {

        List<Integer> movieIds = new ArrayList<>();

        String sql =
            "SELECT movie_id FROM sebastianmoviesdata ORDER BY movie_id";

        try (Connection connection = DriverManager.getConnection(
                URL, USER, PASSWORD);
             PreparedStatement statement =
                connection.prepareStatement(sql);
             ResultSet results = statement.executeQuery()) {

            while (results.next()) {
                movieIds.add(results.getInt("movie_id"));
            }
        }

        return movieIds;
    }

    // Retrieve one movie using its unique ID.
    public boolean loadMovie(int id) throws SQLException {

        String sql =
            "SELECT * FROM sebastianmoviesdata WHERE movie_id = ?";

        try (Connection connection = DriverManager.getConnection(
                URL, USER, PASSWORD);
             PreparedStatement statement =
                connection.prepareStatement(sql)) {

            statement.setInt(1, id);

            try (ResultSet results = statement.executeQuery()) {

                if (results.next()) {
                    movieId = results.getInt("movie_id");
                    title = results.getString("title");
                    director = results.getString("director");
                    genre = results.getString("genre");
                    releaseYear = results.getInt("release_year");
                    rating = results.getDouble("rating");

                    return true;
                }
            }
        }

        return false;
    }

    // Getter methods used by the JSP results page.
    public int getMovieId() {
        return movieId;
    }

    public String getTitle() {
        return title;
    }

    public String getDirector() {
        return director;
    }

    public String getGenre() {
        return genre;
    }

    public int getReleaseYear() {
        return releaseYear;
    }

    public double getRating() {
        return rating;
    }
}
