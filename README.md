# Student Depression Analysis

## 1. Data Collection and Description

I started by downloading the Student Depression Dataset from Kaggle. Here are the details:

- **File Format:** CSV (each row represents an individual student)
- **Features:**
  - ID: Unique identifier for each student
  - Demographics: Age, Gender, City
  - Academic Indicators: CGPA, Academic Pressure, Study Satisfaction
  - Lifestyle & Wellbeing: Sleep Duration, Dietary Habits, Work Pressure, Job Satisfaction, Work/Study Hours
  - Additional Factors: Profession, Degree, Financial Stress, Family History of Mental Illness, and whether the student has ever had suicidal thoughts
- **Target Variable:**
  - Depression Status: A binary indicator (0/1 or Yes/No) that denotes whether a student is experiencing depression

## 2. Data Cleaning and Preparation

I loaded the dataset into Power BI Desktop to inspect and clean the data:

- The ID column is a primary key with no duplicates, outliers, or errors.
- I checked other columns for missing values or errors, and found an error in the Financial Stress column, which I removed.
- I treated outliers in each column to ensure they were not included in the analysis and cleaned some values for better usability.
- I replaced values in the Sleep Duration column to make visualization easier and filtered out some values in the Dietary Habits column.

## 3. Analysis and Visualization

I conducted an analysis of student depression and created visualizations of the results.

### Overview Page
<img width="100%" height="auto" src="./1.jpg" />
This page provides an overview:

- Total number of students in the sample, students who are currently depressed, and the depression rate
- Distribution of student age ranges
- Pie and donut charts showing distribution by Gender and Degree level
- Table and map showing cities with the highest depression rates

### Lifestyle Page
<img width="100%" height="auto" src="./2.jpg" />
This page summarizes data on student depression rates based on various lifestyle factors:

- Depression rate by age group
- Depression rate by work/study hours
- Depression rate by sleep duration
- Comparison of students who work while studying vs. those who do not
- Depression rate by dietary habits

### Academic Page
<img width="100%" height="auto" src="./3.jpg" />
This page presents data and depression rates among students based on educational factors:

- Depression rate by degree
- Depression rate by GPA
- Depression rate by gender
- Depression rate by study satisfaction
- Depression rate by academic pressure

### Stress Page
<img width="100%" height="auto" src="./4.jpg" />
This page presents data and depression rates among students based on stress factors:

- Depression rate by financial stress
- Depression rate by family history of mental illness
- Depression rate among students with suicidal thoughts

### City Page
<img width="100%" height="auto" src="./5.jpg" />
This page presents cities ranked by depression rate and trends about lifestyle in each city. You can filter by clicking on the table at the bottom left to see details.
