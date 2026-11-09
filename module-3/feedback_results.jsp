
<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>

<%--
    Name: Sebastian Siqueiros
    Course: CSD-430 Server-Side Development
    Module: 3.2
    File: feedback_results.jsp

    Purpose:
    Receive customer information submitted from
    restaurant_feedback.jsp and display the data
    in an HTML table.

    Field Descriptions:
    customerName - Name of the customer
    email        - Customer email address
    visitDate    - Date of restaurant visit
    meal         - Meal ordered by the customer
    rating       - Customer service rating
    recommend    - Restaurant recommendation
    comments     - Additional customer feedback
--%>

<%
    // Read the form values submitted using POST.
    request.setCharacterEncoding("UTF-8");

    String customerName = request.getParameter("customerName");
    String email = request.getParameter("email");
    String visitDate = request.getParameter("visitDate");
    String meal = request.getParameter("meal");
    String rating = request.getParameter("rating");
    String recommend = request.getParameter("recommend");
    String comments = request.getParameter("comments");

    // Replace missing or blank values with readable text.
    if (customerName == null || customerName.trim().isEmpty()) {
        customerName = "Not provided";
    }

    if (email == null || email.trim().isEmpty()) {
        email = "Not provided";
    }

    if (visitDate == null || visitDate.trim().isEmpty()) {
        visitDate = "Not provided";
    }

    if (meal == null || meal.trim().isEmpty()) {
        meal = "Not selected";
    }

    if (rating == null || rating.trim().isEmpty()) {
        rating = "Not selected";
    }

    // An unchecked checkbox is not included in the request.
    if (recommend == null) {
        recommend = "No";
    }

    if (comments == null || comments.trim().isEmpty()) {
        comments = "No additional comments";
    }

    // Escape special HTML characters in user input.
    // This prevents submitted text from being treated as HTML.
    String[] values = {
        customerName, email, visitDate, meal,
        rating, recommend, comments
    };

    for (int i = 0; i < values.length; i++) {
        values[i] = values[i]
            .replace("&", "&amp;")
            .replace("<", "&lt;")
            .replace(">", "&gt;")
            .replace("\"", "&quot;")
            .replace("'", "&#39;");
    }

    // Store the escaped values for the results table.
    customerName = values[0];
    email = values[1];
    visitDate = values[2];
    meal = values[3];
    rating = values[4];
    recommend = values[5];
    comments = values[6];

    // Store the results page title.
    String pageTitle = "Restaurant Feedback Results";
%>

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title><%= pageTitle %></title>

    <style>
        /* General page appearance */
        body {
            font-family: Arial, sans-serif;
            background-color: #f4f4f4;
            margin: 30px;
        }

        /* Center the results on the page */
        .container {
            background-color: white;
            max-width: 750px;
            margin: auto;
            padding: 25px;
            border-radius: 8px;
        }

        /* Format the submitted data table */
        table {
            width: 100%;
            border-collapse: collapse;
            margin-top: 20px;
        }

        th, td {
            border: 1px solid #cccccc;
            padding: 12px;
            text-align: left;
            overflow-wrap: anywhere;
        }

        th {
            background-color: #2866a5;
            color: white;
        }

        tr:nth-child(even) {
            background-color: #f2f2f2;
        }

        /* Style the link back to the form */
        .back-link {
            display: inline-block;
            margin-top: 20px;
            padding: 10px 15px;
            background-color: #2866a5;
            color: white;
            text-decoration: none;
            border-radius: 4px;
        }
    </style>
</head>

<body>
    <div class="container">

        <h1><%= pageTitle %></h1>

        <p>
            Thank you for completing our restaurant feedback form.
            The table below displays the information you submitted
            about your restaurant experience.
        </p>

        <!-- Display the customer information in a table -->
        <table>
            <thead>
                <tr>
                    <th>Feedback Field</th>
                    <th>Submitted Information</th>
                </tr>
            </thead>

            <tbody>
                <tr>
                    <td>Customer Name</td>
                    <td><%= customerName %></td>
                </tr>

                <tr>
                    <td>Email Address</td>
                    <td><%= email %></td>
                </tr>

                <tr>
                    <td>Date of Visit</td>
                    <td><%= visitDate %></td>
                </tr>

                <tr>
                    <td>Meal Ordered</td>
                    <td><%= meal %></td>
                </tr>

                <tr>
                    <td>Service Rating</td>
                    <td><%= rating %></td>
                </tr>

                <tr>
                    <td>Would Recommend</td>
                    <td><%= recommend %></td>
                </tr>

                <tr>
                    <td>Additional Comments</td>
                    <td><%= comments %></td>
                </tr>
            </tbody>
        </table>

        <!-- Explain the purpose of the displayed record -->
        <h2>Feedback Record Description</h2>

        <p>
            This record contains the information submitted by
            the customer, including their visit date, meal
            selection, service rating, and additional comments.
            The information can help a restaurant identify
            areas where food and service can be improved.
        </p>

        <!-- Return to the original feedback form -->
        <a class="back-link" href="restaurant_feedback.jsp">
            Submit Another Review
        </a>

    </div>
</body>
</html>
