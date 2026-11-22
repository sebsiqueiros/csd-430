
<%@ page import="com.sebastian.beans.MovieBean" %>

<%
    // Create the JavaBean used to retrieve the selected movie.
    MovieBean movie = new MovieBean();

    boolean movieFound = false;
    String errorMessage = null;

    // Read the unique movie ID submitted by the dropdown form.
    String selectedId = request.getParameter("movieId");

    try {
        if (selectedId != null && !selectedId.trim().isEmpty()) {
            int movieId = Integer.parseInt(selectedId);
            movieFound = movie.loadMovie(movieId);

            if (!movieFound) {
                errorMessage = "No movie was found with that ID.";
            }
        } else {
            errorMessage = "Please select a movie ID.";
        }
    } catch (NumberFormatException e) {
        errorMessage = "Invalid movie ID.";
    } catch (Exception e) {
        errorMessage = "Unable to retrieve the movie record.";
        application.log("Movie lookup error", e);
    }
%>

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>Movie Details - Module 6.2</title>

    <style>
        body {
            font-family: Arial, sans-serif;
            background-color: #f4f4f4;
            margin: 40px;
        }

        .container {
            background-color: white;
            padding: 25px;
            max-width: 1000px;
            margin: auto;
            border-radius: 8px;
        }

        h1 {
            color: #333;
        }

        table {
            width: 100%;
            border-collapse: collapse;
            margin-top: 20px;
        }

        th, td {
            border: 1px solid #ccc;
            padding: 12px;
            text-align: left;
        }

        th {
            background-color: #245c9c;
            color: white;
        }

        a {
            display: inline-block;
            margin-top: 20px;
            color: #245c9c;
        }
    </style>
</head>

<body>

<div class="container">

    <h1>Selected Movie Information</h1>

    <p>
        This page displays the complete database record
        for the movie selected from the dropdown menu.
        Each movie contains six fields.
    </p>

    <% if (movieFound) { %>

    <!-- Display the selected movie in an HTML table. -->
    <table>
        <thead>
            <tr>
                <th>Movie ID</th>
                <th>Title</th>
                <th>Director</th>
                <th>Genre</th>
                <th>Release Year</th>
                <th>Rating</th>
            </tr>
        </thead>

        <tbody>
            <tr>
                <td><%= movie.getMovieId() %></td>
                <td><%= movie.getTitle() %></td>
                <td><%= movie.getDirector() %></td>
                <td><%= movie.getGenre() %></td>
                <td><%= movie.getReleaseYear() %></td>
                <td><%= movie.getRating() %></td>
            </tr>
        </tbody>
    </table>

    <% } else { %>

        <p><%= errorMessage %></p>

    <% } %>

    <h3>Field Descriptions</h3>

    <p>
        <strong>Movie ID:</strong> Unique identifier for each movie.
        <strong>Title:</strong> Name of the movie.
        <strong>Director:</strong> Person who directed the movie.
        <strong>Genre:</strong> Category of the movie.
        <strong>Release Year:</strong> Year the movie was released.
        <strong>Rating:</strong> Movie's numerical rating.
    </p>

    <p>
        Each record represents one movie stored in the
        sebastianmoviesdata database table.
    </p>

    <a href="index.jsp">Return to Movie Selection</a>

</div>

</body>
</html>
