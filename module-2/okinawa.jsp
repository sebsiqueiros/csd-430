
<%--
    Author: Sebastian Siqueiros
    Course: CSD-430 Server-Side Development
    Module: 2.2
    File: okinawa.jsp
    Purpose: Reads Okinawa experiences from a text file
             and displays them in a dynamic HTML table.
--%>

<%@ page import="java.io.BufferedReader" %>
<%@ page import="java.io.InputStream" %>
<%@ page import="java.io.InputStreamReader" %>
<%@ page import="java.nio.charset.StandardCharsets" %>
<%@ page import="java.util.ArrayList" %>
<%@ page import="java.util.List" %>

<%!
    // Escapes special characters before displaying text in HTML.
    public String escapeHtml(String value) {
        return value.replace("&", "&amp;")
                    .replace("<", "&lt;")
                    .replace(">", "&gt;")
                    .replace("\"", "&quot;")
                    .replace("'", "&#39;");
    }
%>

<%
    // Store the Okinawa records after reading the data file.
    List<String[]> experiences = new ArrayList<String[]>();
    String errorMessage = "";

    // Read the data file from the web application's directory.
    try (InputStream input = application.getResourceAsStream(
            "/okinawa_data.txt")) {

        if (input == null) {
            errorMessage = "The Okinawa data file could not be found.";
        } else {
            try (BufferedReader reader = new BufferedReader(
                    new InputStreamReader(input, StandardCharsets.UTF_8))) {

                String line;

                // Read each line and ignore comments or blank lines.
                while ((line = reader.readLine()) != null) {
                    line = line.trim();

                    if (line.isEmpty() || line.startsWith("#")) {
                        continue;
                    }

                    // Split each record into its three fields.
                    String[] fields = line.split("\\|", -1);

                    if (fields.length == 3) {
                        experiences.add(fields);
                    }
                }
            }
        }
    } catch (Exception e) {
        errorMessage = "There was a problem reading the Okinawa data.";
        application.log("Error reading Okinawa data file", e);
    }
%>

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>My Experience in Okinawa, Japan</title>

    <!-- External stylesheet for the webpage -->
    <link rel="stylesheet" href="okinawa.css">
</head>

<body>
    <div class="container">

        <!-- Main title and introduction -->
        <h1>My Experience in Okinawa, Japan</h1>

        <p class="intro">
            Okinawa, Japan, is one of the most memorable places
            I have spent time in. From its beautiful beaches and
            amazing food to its history and outdoor activities,
            there is so much to experience. This webpage highlights
            five of my favorite experiences from my time in Okinawa.
        </p>

        <!-- Explain the data and its categories -->
        <h2>My Okinawa Experiences</h2>

        <p>
            The table below contains five experiences grouped into
            categories such as food, attractions, culture, beaches,
            and activities. Each record contains three fields:
            category, experience, and description.
        </p>

        <!-- Dynamically display the records in an HTML table -->
        <table>
            <thead>
                <tr>
                    <th scope="col">Category</th>
                    <th scope="col">Experience</th>
                    <th scope="col">Description</th>
                </tr>
            </thead>

            <tbody>
                <%
                    // Display each record using a JSP Scriptlet loop.
                    for (String[] experience : experiences) {
                %>
                <tr>
                    <td><%= escapeHtml(experience[0]) %></td>
                    <td><%= escapeHtml(experience[1]) %></td>
                    <td><%= escapeHtml(experience[2]) %></td>
                </tr>
                <%
                    }
                %>
            </tbody>
        </table>

        <!-- Display the number of records loaded -->
        <p class="description">
            Total records displayed: <%= experiences.size() %>
        </p>

        <!-- Show an error if the data file cannot be read -->
        <%
            if (!errorMessage.isEmpty()) {
        %>
        <p class="description">
            <strong><%= escapeHtml(errorMessage) %></strong>
        </p>
        <%
            }
        %>

        <!-- Explain the three fields used in the table -->
        <h2>Understanding the Data</h2>

        <p class="description">
            <strong>Category:</strong> Groups each experience by topic,
            such as food, culture, or outdoor activities.
        </p>

        <p class="description">
            <strong>Experience:</strong> Identifies the location,
            attraction, food, or activity I experienced.
        </p>

        <p class="description">
            <strong>Description:</strong> Provides a brief explanation
            of what made each experience memorable.
        </p>

        <!-- Footer with course information -->
        <footer>
            <p>
                Sebastian Siqueiros | CSD-430 Server-Side Development |
                Module 2.2
            </p>
        </footer>

    </div>
</body>
</html>
