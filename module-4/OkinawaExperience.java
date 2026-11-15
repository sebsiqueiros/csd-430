
package com.siqueiros.okinawa;

import java.io.Serializable;

/*
 * Author: Sebastian Siqueiros
 * Course: CSD-430 Server-Side Development
 * Module: 4.2
 * File: OkinawaExperience.java
 *
 * Purpose:
 * This JavaBean stores information about five experiences
 * from my time in Okinawa, Japan.
 *
 * The information comes from my Module 2.2 assignment.
 * Two additional fields were added to meet the requirement
 * of having at least five fields.
 *
 * This class implements Serializable and includes
 * constructors, getters, and setters so the JSP page
 * can access the information.
 */

public class OkinawaExperience implements Serializable {

    // Version number for serialization.
    private static final long serialVersionUID = 1L;

    // Identifies the category of the experience.
    private String category;

    // Stores the name of the place, food, or activity.
    private String experience;

    // Stores information describing the experience.
    private String description;

    // Stores the general location of the experience.
    private String location;

    // Identifies the type of activity or experience.
    private String experienceType;

    /*
     * Default constructor.
     * Allows an empty JavaBean object to be created.
     */
    public OkinawaExperience() {
    }

    /*
     * Constructor that accepts values for all five fields.
     * Used when creating Okinawa experience records.
     */
    public OkinawaExperience(String category, String experience,
                             String description, String location,
                             String experienceType) {

        this.category = category;
        this.experience = experience;
        this.description = description;
        this.location = location;
        this.experienceType = experienceType;
    }

    // Returns the category.
    public String getCategory() {
        return category;
    }

    // Updates the category.
    public void setCategory(String category) {
        this.category = category;
    }

    // Returns the experience name.
    public String getExperience() {
        return experience;
    }

    // Updates the experience name.
    public void setExperience(String experience) {
        this.experience = experience;
    }

    // Returns the description.
    public String getDescription() {
        return description;
    }

    // Updates the description.
    public void setDescription(String description) {
        this.description = description;
    }

    // Returns the location.
    public String getLocation() {
        return location;
    }

    // Updates the location.
    public void setLocation(String location) {
        this.location = location;
    }

    // Returns the experience type.
    public String getExperienceType() {
        return experienceType;
    }

    // Updates the experience type.
    public void setExperienceType(String experienceType) {
        this.experienceType = experienceType;
    }
}
