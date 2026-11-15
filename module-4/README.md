
# CSD-430 Module 4.2
## JavaBean – My Experience in Okinawa, Japan

**Author:** Sebastian Siqueiros  
**Course:** CSD-430 Server-Side Development  
**Module:** 4.2

## Project Description

This project uses a JavaBean and a JSP page to display information
about five experiences from my time in Okinawa, Japan.

The information comes from my Module 2.2 assignment. For Module 4.2,
I created a JavaBean to hold the data and added two additional fields.

The JSP page uses Java Scriptlets to retrieve information from the
JavaBean objects and displays the results in an HTML table.

An external CSS stylesheet is used to format the webpage.

## Project Files

- OkinawaExperience.java - JavaBean containing five data fields,
  constructors, getters, and setters.
- okinawa_bean.jsp - JSP page that creates JavaBean objects and
  displays their information in an HTML table.
- okinawa.css - External stylesheet used to format the webpage.
- README.md - Project documentation.

## JavaBean Fields

The JavaBean contains five fields:

1. Category - Identifies the type of Okinawa experience.
2. Experience - Stores the name of the food, place, or activity.
3. Description - Provides information about the experience.
4. Location - Identifies the general location of the experience.
5. Experience Type - Describes the type of activity involved.

## Data Records

The application displays five records:

1. Food - Okinawa Soba
2. Attractions - Churaumi Aquarium
3. Culture - Shurijo Castle
4. Beaches - Emerald Beach
5. Activities - Snorkeling

Each record contains values for all five JavaBean fields.

## How the Program Works

1. Apache Tomcat runs the JSP webpage.
2. The JSP creates five OkinawaExperience JavaBean objects.
3. Each object stores information in five private fields.
4. Getter methods retrieve the information from each JavaBean.
5. Java Scriptlets loop through the five objects.
6. HTML table rows display the retrieved information.
7. The CSS stylesheet formats the webpage.
8. The JSP displays the total number of records.

## JavaBean Requirements

The OkinawaExperience class implements java.io.Serializable.

The class includes a default constructor, a constructor that
accepts all five fields, and getter and setter methods.

## Running the Application

The application was tested using Apache Tomcat 10.1.61.

The compiled JavaBean must be placed in:

WEB-INF/classes/com/siqueiros/okinawa/

The JSP and CSS files must be placed in the root directory
of the Tomcat web application.

Open the following address in a browser:

http://localhost:8080/okinawa-module4/okinawa_bean.jsp

## Testing

The application was tested to confirm that:

- The JSP page loads successfully.
- All five JavaBean records appear in the HTML table.
- All five data fields display correctly.
- The CSS stylesheet loads properly.
- The total record count displays five.
- The page includes the title and data descriptions.
- The JavaBean implements Serializable.
- All HTML tags remain outside Java Scriptlets.
