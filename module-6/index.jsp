
<%@ page import="java.util.List" %>
<%@ page import="com.sebastian.beans.MovieBean" %>

<%
    // Create the JavaBean and retrieve movie IDs.
    MovieBean movieBean = new MovieBean();
    List<Integer> movieIds = null;
    String errorMessage = null;

    try {
        movieIds = movieBean.getMovieIds();
    } catch (Exception e) {
        errorMessage = "Unable to load movies from the database.";
        application.log("Movie dropdown error", e);
    }
%>

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>Movie Database - Module 6.2</title>
    <style>
        body {
            font-family: Arial, sans-serif;
            background-color: #f4f4f4;
            margin: 40px;
        }

        .container {
            background-color: white;
            padding: 25px;
            max-width: 650px;
            margin: auto;
            border-radius: 8px;
        }

        h1 {
            color: #333;
        }

        select, button {
            padding: 10px;
            margin-top: 10px;
            font-size: 16px;
        }

        button {
            background-color: #245c9c;
            color: white;
            border: none;
            cursor: pointer;
        }
    </style>
</head>
<body>

<div class="container">
    <h1>Movie Database</h1>

    <p>
        This page displays movie IDs stored in the
        CSD430 database. Select a movie ID to view
        its complete record.
    </p>

    <!-- Movie selection form -->
    <form action="movieResults.jsp" method="get">
        <label for="movieId">Select a Movie ID:</label>

        <select name="movieId" id="movieId" required>
            <option value="">-- Choose a Movie --</option>

            <%
                // Generate one dropdown option for each movie.
                if (movieIds != null) {
                    for (Integer id : movieIds) {
            %>
                <option value="<%= id %>">
                    Movie ID: <%= id %>
                </option>
            <%
                    }
                }
            %>
        </select>

        <button type="submit">View Movie</button>
    </form>

    <% if (errorMessage != null) { %>
        <p><%= errorMessage %></p>
    <% } %>

    <h3>Field Description</h3>
    <p>
        Movie ID is the unique key used to identify
        each movie record in the database.
    </p>
</div>

</body>
</html>
