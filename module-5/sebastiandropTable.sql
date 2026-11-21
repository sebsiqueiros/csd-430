
-- Name: Sebastian Siqueiros
-- Course: CSD-430 Server-Side Development
-- Module: 5.2 - CRUD-READ, JDBC & JavaBeans
-- File: sebastiandropTable.sql
--
-- Purpose:
-- This file removes the sebastianmoviesdata table from the
-- CSD430 database when the table needs to be deleted or recreated.
--
-- WARNING:
-- Running this file will permanently delete the movie table
-- and all records stored inside it.
--
-- This file is included because the instructor requires a
-- drop-table SQL script as part of the project submission.
-- It should not be executed during normal use of the project.

-- Select the required database.
USE CSD430;

-- Delete the movie table only if it exists.
DROP TABLE IF EXISTS sebastianmoviesdata;
