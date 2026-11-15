
<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ page import="com.siqueiros.okinawa.OkinawaExperience" %>

<%--
    Author: Sebastian Siqueiros
    Course: CSD-430 Server-Side Development
    Module: 4.2
    File: okinawa_bean.jsp

    Purpose:
    This JSP page uses a JavaBean to display information
    about five experiences from my time in Okinawa, Japan.

    The original data comes from my Module 2.2 assignment.
    Two additional fields were added for Module 4.2.

    Java Scriptlets are used to work with the JavaBean.
    All HTML tags are kept outside the Java Scriptlets.
--%>

<%
    /*
     * Create five JavaBean objects.
     * Each object represents one Okinawa experience.
     *
     * The five fields are:
     * 1. Category
     * 2. Experience
     * 3. Description
     * 4. Location
     * 5. Experience Type
     */

    OkinawaExperience[] experiences = {

        new OkinawaExperience(
            "Food",
            "Okinawa Soba",
            "One of the traditional Okinawan dishes I enjoyed during my time in Japan.",
            "Okinawa, Japan",
            "Food and Dining"
        ),

        new OkinawaExperience(
            "Attractions",
            "Churaumi Aquarium",
            "A popular aquarium in Okinawa where I experienced the island's amazing marine life.",
            "Motobu, Okinawa",
            "Sightseeing"
        ),

        new OkinawaExperience(
            "Culture",
            "Shurijo Castle",
            "A historic castle that represents Okinawa's culture and the history of the Ryukyu Kingdom.",
            "Naha, Okinawa",
            "History and Culture"
        ),

        new OkinawaExperience(
            "Beaches",
            "Emerald Beach",
            "A beautiful beach in northern Okinawa with clear water and amazing scenery.",
            "Motobu, Okinawa",
            "Beach and Relaxation"
        ),

        new OkinawaExperience(
            "Activities",
            "Snorkeling",
            "One of my favorite outdoor activities was exploring Okinawa's clear waters and marine life.",
            "Okinawa, Japan",
            "Outdoor Recreation"
        )
    };

    // Count the number of experience records.
    int totalRecords = experiences.length;
%>

<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">

    <title>My Experience in Okinawa, Japan</title>

    <!-- External CSS stylesheet for the page layout and table -->
    <link rel="stylesheet" href="okinawa.css">
</head>

<body>

    <!-- Main container for the webpage -->
    <div class="container">

        <!-- Page title and overall data description -->
        <h1>My Experience in Okinawa, Japan</h1>

        <p class="intro">
            Okinawa, Japan, is one of the most memorable places
            I have spent time in. From its beautiful beaches and
            amazing food to its history and outdoor activities,
            Okinawa offers many unique experiences.
            This webpage highlights five of my favorite
            experiences from my time in Okinawa.
        </p>

        <!-- Section introducing the JavaBean records -->
        <h2>My Okinawa Experiences</h2>

        <p>
            The table below displays information retrieved from
            JavaBean objects. Each record contains five fields:
            category, experience, description, location, and
            experience type.
        </p>

        <!-- HTML table used to display the JavaBean data -->
        <table>

            <thead>
                <tr>
                    <th>Category</th>
                    <th>Experience</th>
                    <th>Description</th>
                    <th>Location</th>
                    <th>Experience Type</th>
                </tr>
            </thead>

            <tbody>

                <% 
                    /*
                     * Loop through the JavaBean objects.
                     * Getter methods retrieve each field.
                     * HTML tags remain outside the Scriptlets.
                     */
                    for (OkinawaExperience item : experiences) {
                %>

                <tr>
                    <td><%= item.getCategory() %></td>
                    <td><%= item.getExperience() %></td>
                    <td><%= item.getDescription() %></td>
                    <td><%= item.getLocation() %></td>
                    <td><%= item.getExperienceType() %></td>
                </tr>

                <%
                    }
                %>

            </tbody>

        </table>

        <!-- Display the total number of records -->
        <p class="description">
            Total records displayed: <%= totalRecords %>
        </p>

        <!-- Explain the purpose of each data field -->
        <h2>Understanding the Data</h2>

        <div class="description">

            <p>
                <strong>Category:</strong>
                Groups each experience by food, attractions,
                culture, beaches, or activities.
            </p>

            <p>
                <strong>Experience:</strong>
                Identifies the location, attraction, food,
                or activity I experienced.
            </p>

            <p>
                <strong>Description:</strong>
                Provides a short explanation of what made
                each experience memorable.
            </p>

            <p>
                <strong>Location:</strong>
                Identifies the general area where the
                experience took place.
            </p>

            <p>
                <strong>Experience Type:</strong>
                Describes the type of activity involved,
                such as sightseeing, dining, or recreation.
            </p>

        </div>

        <!-- Footer identifies the course and assignment -->
        <footer>
            Sebastian Siqueiros | CSD-430 | Module 4.2
        </footer>

    </div>

</body>
</html>
