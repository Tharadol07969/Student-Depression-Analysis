# Student-Depression-Analysis

<h3 align="left">1. I started to download the Student Depression Dataset from Kaggle and this is a Data Description</h3>

- Format: CSV (each row represents an individual student)
- Features:
<h5 align="left">ID: Unique identifier for each student</h5>
<h5 align="left">Demographics: Age, Gender, City</h5>
<h5 align="left">Academic Indicators: CGPA, Academic Pressure, Study Satisfaction</h5>
<h5 align="left">Lifestyle & Wellbeing: Sleep Duration, Dietary Habits, Work Pressure, Job Satisfaction, Work/Study Hours</h5>
<h5 align="left">Additional Factors: Profession, Degree, Financial Stress, Family History of Mental Illness, and whether the student has ever had suicidal thoughts</h5>

- Target Variable:
<h5 align="left">Depression_Status: A binary indicator (0/1 or Yes/No) that denotes whether a student is experiencing depression</h5>


<h3 align="left">2. I open Power BI Desktop and load the dataset to inspect and clean the data for making the report.</h3>
<img width="100%" height="auto" src="./1.jpg" />
<h5 align="left">First, The id column is a primary key and it does not have duplicates, outliers, or errors. So I don't have to do anything in this column.</h5>
<h5 align="left">In the next step, I explore the other columns to check for missing values or errors. And I found the error in the column financial stress.</h5>
<img width="25%" height="auto" src="./2.jpg" />
<h5 align="left">So I removed the error from the table. Now my table does not have any missing values or errors.</h5>
<h5 align="left">In the next step, I start checking for outliers in each column and treating them so that they are not included in the analysis and clean some values for more usability.</h5>
<h5 align="left">Then I found an outlier from the city column. I inspected the values from this column and found almost all of these values come from India. For the outlier, I don't know if it's a misspelling or something, and some value I can't find true value. I decided to filter it out Because I want to focus on the value in India.</h5>
<img width="50%" height="auto" src="./3.jpg" />
<h5 align="left">Next, I replace the value in the Sleep Duration column to make it easier to visualize then I filter the value "others" in this column out and also filter in Dietary Habits.</h5>
<img width="50%" height="auto" src="./4.jpg" /> <img width="50%" height="auto" src="./5.jpg" />
<h5 align="left">The number of values ​​is slightly reduced from the original file, but the data set is clean and ready for analysis and visualization.</h5>
<img width="25%" height="auto" src="./6.jpg" />


<h3 align="left">3. Time to analysis about student depression and visualization.</h3>
<h5 align="left">Here this is my result</h5>
<h5 align="left">This is the first page "Overview"</h5>
<img width="100%" height="auto" src="./7.jpg" />
<h5 align="left">On this page, at the top, you can see the total number of students in the sample, students who are currently depressed, and the depression rate.</h5>
<h5 align="left">Scroll down and you can see the distribution of student age ranges, and the pie chart and donut chart on the right show the distribution by Gender and Degree level.</h5>
<h5 align="left">The table and map below show which cities have the highest depression rates and are ranked by depression rate.</h5>
<h5 align="left">In summary, This page shows that there are a total of 27,844 students, and of these, more than 16,000 (approximately 58.55%) are in the depressed group. And show that Ahmedabad city has the highest depression rate.</h5>


<h5 align="left">Next is the second page "Lifestyle"</h5>
<img width="100%" height="auto" src="./8.jpg" />
<h5 align="left">The “Lifestyle”  page,  page summarizes data on the depression rate of students based on various lifestyle factors. with details on dimensions related as follows:</h5>
<h5 align="left">1. Student and Depression Rate by Age
The upper left graph shows the total number of students in each age group (Bar) compared to the incidence rate of depression (Line).
It can be seen that the younger group (aged 15-20 years) has the highest rate of depression, which is 73.60%, followed by the older age group.</h5>
<img width="50%" height="auto" src="./9.jpg" />
<h5 align="left">2. Total Student and Depression Rate by Work/Study Hours
The lower left graph shows the total number of students (Bar) by the number of work/study hours per day. The Line shows the depression rate in each hour range.
It can be seen that the more work/study hours, the higher the depression rate tends to be. The group with 0 working/study hours has the lowest depression rate at 35.50%, while the group with 12 working/study hours has a depression rate at 68.36%.</h5>
<img width="50%" height="auto" src="./10.jpg" />
<h5 align="left">3. Student and Depression Rate by Sleep Duration
The upper right graph is divided by sleep duration.
It can be seen that the group that slept less than 5 hours per day had the highest depression rate at 64.53%, and the group that slept more than 8 hours had a depression rate at 50.91%.</h5>
<img width="50%" height="auto" src="./11.jpg" />
<h5 align="left">4. Student and Depression Rate by Only Study or Work while Studying
The middle right graph shows a comparison between students who work while studying and those who do not work.
The group that works while studying has a very high depression rate at 90.32%.</h5>
<img width="50%" height="auto" src="./12.jpg" />
<h5 align="left">5. Total Student and Depression Rate by Dietary Habits
The graph on the lower right shows the types of eating behaviors (Dietary Habits) such as Unhealthy, Moderate, and Healthy.
It can be observed that the group with Unhealthy eating behaviors has the highest depression rate at 70.75%, but the group with healthy eating behaviors has a depression rate at 45.37%.</h5>
<img width="50%" height="auto" src="./13.jpg" />
<h5 align="left">In summary, This page highlights the relationship between student lifestyle and depression rates, Sleep Duration, Overwork or Overstudy, and Dietary Habits, which appear to have an impact on depression rates.</h5>


<h5 align="left">Next is the third page "Academic"</h5>
<img width="100%" height="auto" src="./14.jpg" />
<h5 align="left">This “Academic” page, page presents data and depression rates among students based on educational factors, with details on dimensions related as follows:</h5>
