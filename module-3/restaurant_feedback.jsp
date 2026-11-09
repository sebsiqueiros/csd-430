
<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>

<%--
    Name: Sebastian Siqueiros
    Course: CSD-430 Server-Side Development
    Module: 3.2
    File: restaurant_feedback.jsp

    Purpose:
    This JSP displays a restaurant customer feedback form.
    Customers enter information about their visit.
    The form submits the data to feedback_results.jsp.
--%>

<%
    // Store the page title using a Java scriptlet.
    String pageTitle = "Restaurant Customer Feedback Form";
%>

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title><%= pageTitle %></title>

    <style>
        /* Style the page and center the form. */
        body {
            font-family: Arial, sans-serif;
            background-color: #f4f4f4;
            margin: 30px;
        }

        /* Main form container. */
        .container {
            background-color: white;
            max-width: 600px;
            margin: auto;
            padding: 25px;
            border-radius: 8px;
        }

        /* Space out the form fields. */
        .field {
            margin-bottom: 18px;
        }

        label {
            display: block;
            margin-bottom: 6px;
            font-weight: bold;
        }

        input[type="text"],
        input[type="email"],
        input[type="date"],
        select,
        textarea {
            width: 100%;
            padding: 9px;
            box-sizing: border-box;
        }

        .choice label {
            display: inline;
            font-weight: normal;
        }

        button {
            background-color: #2866a5;
            color: white;
            padding: 12px 20px;
            border: none;
            border-radius: 4px;
            cursor: pointer;
        }
    </style>
</head>

<body>
    <div class="container">

        <h1><%= pageTitle %></h1>

        <p>
            Please tell us about your recent restaurant visit.
            Your feedback helps us improve our food and service.
        </p>

        <%-- Submit all entered data to a separate results JSP. --%>
        <form action="feedback_results.jsp" method="post">

            <!-- Field 1: Customer name -->
            <div class="field">
                <label for="customerName">Customer Name:</label>
                <input type="text" id="customerName"
                       name="customerName" required>
            </div>

            <!-- Field 2: Customer email -->
            <div class="field">
                <label for="email">Email Address:</label>
                <input type="email" id="email"
                       name="email" required>
            </div>

            <!-- Field 3: Date of restaurant visit -->
            <div class="field">
                <label for="visitDate">Date of Visit:</label>
                <input type="date" id="visitDate"
                       name="visitDate" required>
            </div>

            <!-- Field 4: Meal selection -->
            <div class="field">
                <label for="meal">Meal Ordered:</label>
                <select id="meal" name="meal" required>
                    <option value="">Select a meal</option>
                    <option value="Burger">Burger</option>
                    <option value="Pizza">Pizza</option>
                    <option value="Pasta">Pasta</option>
                    <option value="Salad">Salad</option>
                    <option value="Other">Other</option>
                </select>
            </div>

            <!-- Field 5: Service rating using radio buttons -->
            <div class="field">
                <label>Service Rating:</label>
                <div class="choice">
                    <input type="radio" id="excellent"
                           name="rating" value="Excellent" required>
                    <label for="excellent">Excellent</label>

                    <input type="radio" id="good"
                           name="rating" value="Good">
                    <label for="good">Good</label>

                    <input type="radio" id="fair"
                           name="rating" value="Fair">
                    <label for="fair">Fair</label>

                    <input type="radio" id="poor"
                           name="rating" value="Poor">
                    <label for="poor">Poor</label>
                </div>
            </div>

            <!-- Field 6: Recommendation checkbox -->
            <div class="field choice">
                <input type="checkbox" id="recommend"
                       name="recommend" value="Yes">
                <label for="recommend">
                    I would recommend this restaurant.
                </label>
            </div>

            <!-- Field 7: Additional written feedback -->
            <div class="field">
                <label for="comments">Additional Comments:</label>
                <textarea id="comments" name="comments"
                          rows="4"
                          placeholder="Tell us about your experience"></textarea>
            </div>

            <!-- Submit the form to the results page -->
            <button type="submit">Submit Feedback</button>

        </form>
    </div>
</body>
</html>
