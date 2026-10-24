
<%--
    Name: Sebastian Siqueiros
    Date: October 24, 2026
    Assignment: CSD-430 Module 1
    Purpose: Display student and course information using Java, JSP, and HTML.
    AI Assistance: OpenAI ChatGPT assisted with generating this example.
--%>

<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>

<%
    // Store the student and course information.
    String studentName = "Sebastian Siqueiros";
    String courseName = "CSD-430 Server-Side Development";
    String assignmentName = "Module 1 - JSP Application";

    // Create an array containing the technologies used.
    String[] technologies = {"Java", "JSP", "HTML"};

    // Count the number of technologies in the array.
    int technologyCount = technologies.length;
%>

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>CSD-430 Module 1</title>
</head>
<body>

    <h1>CSD-430 Module 1 JSP Application</h1>

    <h2>Student Information</h2>

    <table border="1" cellpadding="10">
        <tr>
            <th>Category</th>
            <th>Information</th>
        </tr>
        <tr>
            <td>Student Name</td>
            <td><%= studentName %></td>
        </tr>
        <tr>
            <td>Course</td>
            <td><%= courseName %></td>
        </tr>
        <tr>
            <td>Assignment</td>
            <td><%= assignmentName %></td>
        </tr>
    </table>

    <h2>Technologies Used</h2>

    <ul>
        <%
            // Use Java to display each technology.
            for (String technology : technologies) {
        %>
            <li><%= technology %></li>
        <%
            }
        %>
    </ul>

    <p>Total Technologies Used: <%= technologyCount %></p>

</body>
</html>
