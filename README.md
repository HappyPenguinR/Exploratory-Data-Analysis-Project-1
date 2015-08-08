This is an R Markdown document that explains what the four R scripts do and how they can be invoked by any user. 

==================================================================

Coursera: Exploratory Data Analysis: 
Course Project 1
Date: August 9, 2015
Author: HappyPenguinR

Dataset: Electric Power Consumption
Data Source: UC Irvine Machine Learning Repository

==================================================================

####Background


For this course project, we were provided a link to a dataset called “Electric Power Consumption". 

The original dataset provided measurements of electric power consumption in one household with a one-minute sampling rate over a period of almost 4 years. The dataset had 2,075,259 rows and 9 columns but our assignment was focused only on data from dates 2007-02-01 and 2007-02-02. 

The assignment required us to create four plots, each with its own R-script. I used the dplyr, lubridate, and chron packages for this assignment. What follows is my approach

####PART ONE: Process the Source txt file

First I read the txt file into a table, then used the dplyr package's "filter" command to subset the file to only relevant rows. Then I saved the subsetted file and used write.table to export it into a txt file. I then used only the subsetted file for the remainder of the assignment.

####PART TWO: Convert Date and Time Variables to Date/Time Classes

I read the subsetted txt file into another table called "Consumption1". Then I used the lubridate and chron packages to convert the date and time to Date/Time Classes. 

I then created another column in the data table that contained the Date/Time. 

####PART THREE: Creating Plots

I then created the plots individually using all we learned in the base plotting lecture and in the graphic devices lecture. 

####Note

This submission is for the sole purpose of completing my Assignment for the Coursera program: Exploratory Data Analysis.