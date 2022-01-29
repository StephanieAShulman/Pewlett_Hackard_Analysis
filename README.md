# Pewlett_Hackard_Analysis

## Resources
- Data Sources: six employer-specific csv files with overlapping columns (eg: employee or department ID)
- Software: PostgreSQL Version 11, pgAdmin4, Visual Studio Code, Quick Database Diagrams

## Project Overview
Pewlett Howard (PH) is a long-standing company with several thousand employees, which includes ready-to-retire Baby Boomers born between 1952 and 1955. HR analyst Bobby was tasked with performing employee research to better understand (a) the composite of individuals retiring in the next few years and (b) the number of positions PH will need to fill. Information specific to this work exists in the form of six CSV files around employees, departments, department managers, employee-department codes, salaries and titles. Bobby requests assistance in building an SQL database from the files, which would then allow for an easier response to the company request.

To assist Bobby, the following steps were taken: \
   A. 	PostgreSQL – a relational database system – was downloaded alongside pgAdmin, the interface for writing and executing queries. \
   B. 	CSV files were reviewed to discover overlapping columns that could be used to form connections between tables (aka: foreign keys) as well as columns that were unique to the file (aka: primary keys). \
   C. 	The Quick Database Diagrams site was accessed to build an entity relationship diagram (ERD), or flowchart, which captured the relationship among the different files. \
   D. 	A new database was created using pgAdmin, allowing the six CSV files to be imported into newly created tables.

   ![ALT Text](https://user-images.githubusercontent.com/30667001/151673261-d13c8331-2a36-4e5c-b756-e0a90677b014.png)

With a working database, queries were conducted to explore and retrieve data. Joins were employed to connect information found in different files. Specific tables were created to better understand the number of individuals retiring and the departments likely to be impacted and the tables exported back to CSV for future review.

## A Coming Change (Challenge)
With an understanding of the great number of individuals likely to retire, upper management would like to protect itself by instituting a mentorship program. Two additional requests were made:
  1.	Determine the number of employees – by title - who are retiring.
  2.	Identify the employees eligible to participate in a mentorship program, defined by the company as those born in 1965.

Current employees were filtered by specified birthdates (either those between 1952 and 1955 for the retiring population or 1965 for the potential protégé). Tables with unique titles and counts of both groups were created to determine specific personnel at the granular level and with high-level counts. Based on this information:

![ALT Text](https://user-images.githubusercontent.com/30667001/151675096-d8b33f28-a8c5-4601-a6af-04f15f10abd3.png)

1.	The current mentorship plan far underestimates the coming vacancies. Over 70 thousand individuals are eligible for retirement, compared to fewer than 2 thousand eligible for mentorship.
2.	The majority of turnover will be in engineering and senior staffing roles.
3.	Managerial roles do not appear as if they will be impacted.
4.	There are plenty of qualified individuals to train the next generation.

To better protect the company, additional analyses should be considered such as:
  - Widening the age pool for those who may qualify for the mentorship program. This should be reviewed alongside dates (i.e., time spent) in specific roles as individuals may have enough experience to qualify for increased responsibility that is not evident by title alone.
  - Review counts against specific departments as certain areas may experience a greater impact than others, also not evident by title alone.
