# Pewlett-Hackard-Analysis

## Overview
### Purpose
> Given the data of Pewlett Hackard employees, determine the number of retiring employees per title, and identify employees who are eligible to participate in a mentorship program. Then, you’ll write a report that summarizes your analysis and helps prepare Bobby’s manager for the “silver tsunami” as many current employees reach retirement age. 

This assignment had us practicing designing and referencing ERDs, expanding on knowledge of SQL databases and queries with the following: familiarity with creation of tables, retrieving, joining and filtering SQL data. 

### Resources
- Language: SQL
- Interface: PostgreSQL, pgAdmin 4, Visual Studio Code, Quick Database Diagrams
- SQL Queries: CREATE, SELECT, INTO, FROM, INNER JOIN, ON(), WHERE, ORDER BY, DISTINCT ON
- Input: [employees.csv](https://github.com/li-emily/Pewlett-Hackard-Analysis/blob/main/Data/employees.csv), [titles,csv](https://github.com/li-emily/Pewlett-Hackard-Analysis/blob/main/Data/titles.csv), [dept_emp.csv](https://github.com/li-emily/Pewlett-Hackard-Analysis/blob/main/Data/dept_emp.csv), [Employee_Challenge_starter_code.sql](https://github.com/li-emily/Pewlett-Hackard-Analysis/blob/main/Queries/Employee_Challenge_starter_code.sql)
- Output: [retirement_titles.csv](https://github.com/li-emily/Pewlett-Hackard-Analysis/blob/main/Data/retirement_titles.csv), [unique_titles.csv](https://github.com/li-emily/Pewlett-Hackard-Analysis/blob/main/Data/unique_titles.csv), retiring_titles.csv(https://github.com/li-emily/Pewlett-Hackard-Analysis/blob/main/Data/retiring_titles.csv), mentorship_eligibility.csv(https://github.com/li-emily/Pewlett-Hackard-Analysis/blob/main/Data/mentorship_eligibility.csv)

## Results
- Using the following entity relationship diagram (ERD), organizing all of this analysis' data was much easier. It identifies primary keys from each csv and helps show the flow of information from each.
![ERD Table](https://github.com/li-emily/Pewlett-Hackard-Analysis/blob/main/EmployeeDB.png)
- Creating a table of retiring age employees at Pewlett Hackard found that 133,776 employees are potentially eligible, with a snippet of the data below.
![Retirement Titles](https://github.com/li-emily/Pewlett-Hackard-Analysis/blob/main/Resources/retirement_titles.png)
- Since there are potentially employees who have held different titles at Pewlett Hackard, they were inputted multiple times in the last table. Thus, we removed duplicate entries and made sure to take the latest job title for each employee. This then found that 90,398 unique employees were eligible for retirement.
![Unique Titles](https://github.com/li-emily/Pewlett-Hackard-Analysis/blob/main/Resources/unique_titles.png)
- By using the COUNT function, we then broke down the number of retirement ready employees by job title. Senior Engineer and Senior Staff both had respective very large numbers of 29,414 and 28,254 employees ready to retire. On the other end, Managers only had 2 employees ready for retirement. 
![Retiring Titles](https://github.com/li-emily/Pewlett-Hackard-Analysis/blob/main/Resources/retiring_titles.png)
- We then created a table to check for employees born in 1965 for mentorship eligibility, with a small section below.
![Mentorship Eligibility](https://github.com/li-emily/Pewlett-Hackard-Analysis/blob/main/Resources/mentorship_eligibility.png)


## Summary
- When the 'silver tsunami' of employees begin to start retiring, there will be 90,398 employee spots to fill at Pewlett Hackard. Unfortunately, there are only 1,549 qualified, retirement-ready employees who would then be eligible to mentor new employees. This would mean that each mentor would have to mentee over 58 people each. Additionally, each job title does not have a number of sufficient mentors.

![Mentorship Count](https://github.com/li-emily/Pewlett-Hackard-Analysis/blob/main/Resources/unique_mentorship.png)

-  This obviously is not truly possible, so it means that we must loosen the parameters for a mentor. By adjusting required birth date to encompass all of 1966-1970 and start dates from 1980-1990, we were able to widen the number of potential employee mentors to 7,316. 
- Adding these onto the earlier 1,549, we have a total of 8,865 mentors, with a roughly 1:10 mentor to mentee ratio. This is still a bit high, but not all of the retirement eligible employees will be retiring immediately. 
- With the snippet below of the additional mentors and the count split by job title, it seems that this will better prepare Pewlett Hackard for the 'silver tsunami'.

![New Mentors](https://github.com/li-emily/Pewlett-Hackard-Analysis/blob/main/Resources/new_mentors.png)
![New Mentors](https://github.com/li-emily/Pewlett-Hackard-Analysis/blob/main/Resources/
new_mentor_count.png)