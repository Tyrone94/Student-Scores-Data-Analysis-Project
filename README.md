# 🎓 Student Scores Data Analysis Project

This project was developed as part of a data analysis assignment using **R** and **RStudio**. It involves exploring and analyzing a dataset containing student scores across three subjects — **Math**, **Reading**, and **Writing** — to gain insights and practice key data science techniques.

## 📁 Dataset Overview

The dataset includes the following columns:
- `student_id`
- `gender`
- `math_score`
- `reading_score`
- `writing_score`
- `school`

## 🛠 Tools Used

- **R** (Programming Language)
- **RStudio** (IDE)
- `dplyr` and `tidyverse` (for data manipulation)
- `ggplot2` (for data visualization)

## ✅ Tasks Completed

1. **Data Cleaning**
   - Handled missing values and removed duplicates.

2. **Feature Engineering**
   - Created two new columns:
     - `percentage`: Total score percentage across the three subjects.
     - `age_group`: A simulated age group based on `student_id`.

3. **Data Manipulation**
   - Used `dplyr` functions such as:
     - `mutate()`
     - `filter()`
     - `group_by()`
     - `summarise()`

4. **Data Visualization**
   - Created:
     - A **bar chart** comparing average percentages across gender and age groups.
     - A **scatter plot** showing the relationship between math and reading scores.

5. **Insight Extraction**
   - Analyzed the visualizations to draw conclusions and provide recommendations.

## 📊 Key Insights

- Students in the 17-18 age group performed slightly better overall.
- There is a strong positive relationship between math and reading scores.
- Female students slightly outperformed male students in reading and writing.

## 📌 Recommendations

- Encourage balanced focus across all subjects to improve overall performance.
- Offer extra support or tutoring in writing for students scoring below average.
- Further analysis could involve investigating school-wise performance.

## 📦 Files in This Repository

- `student_scores.csv`: Raw dataset
- `student_scores_analysis.R`: R script containing all code
- `bar_chart.png` and `scatter_plot.png`: Visualizations
- `student_group_report.pdf`: Group-written summary report




## 💡 Author

Anele Khanyile – Data Analytics Intern  
*This project was completed as part of a course assignment using R and RStudio.*
