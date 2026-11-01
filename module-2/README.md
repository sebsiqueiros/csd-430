
# CSD-430 Module 2.2
## My Experience in Okinawa, Japan

**Author:** Sebastian Siqueiros  
**Course:** CSD-430 Server-Side Development  
**Module:** 2.2

## Project Description

This project is a dynamic JSP webpage about five experiences
from my time in Okinawa, Japan. The webpage uses Java Scriptlets
to read information from a separate text file and displays the
records in an HTML table.

The webpage also uses an external CSS stylesheet to improve
its appearance.

## Project Files

- okinawa.jsp - Contains the JSP Scriptlets, Java code, and HTML.
- okinawa.css - Contains the external CSS styling.
- okinawa_data.txt - Stores the five Okinawa experience records.
- README.md - Provides documentation about the project.

## Data Records

The project contains five records with three fields each.

The three fields are:

1. Category - Identifies the type of experience.
2. Experience - Names the place, food, or activity.
3. Description - Provides information about the experience.

The five categories are Food, Attractions, Culture, Beaches,
and Activities.

## How the Program Works

1. Apache Tomcat runs the JSP webpage.
2. Java Scriptlets read the Okinawa data file.
3. The program skips blank lines and documentation comments.
4. Each record is separated into three fields.
5. A Java loop displays the records in an HTML table.
6. The external CSS file styles the webpage.
7. The program displays the total number of records.

## Running the Application

The application was tested using Apache Tomcat 10.1.61.

1. Copy okinawa.jsp, okinawa.css, and okinawa_data.txt
   into the Tomcat webapps/okinawa directory.
2. Start Apache Tomcat.
3. Open the following address in a browser:

   http://localhost:8080/okinawa/okinawa.jsp

## Testing

The webpage was tested to confirm that:

- All five records appear in the HTML table.
- Each record displays the correct three fields.
- The external CSS stylesheet loads correctly.
- The total record count displays five.
- The page includes descriptions of the data and fields.
