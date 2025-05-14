my_data <- read.csv("C:/Users/Admin/Downloads/student_scores.csv")
head(student_scores)

install.packages("tidyverse")  # Only once
library(tidyverse)
# View structure of the dataset
str(student_scores)

# Check for missing values in each column
colSums(is.na(student_scores))

# Check for duplicates
sum(duplicated(student_scores))

# Remove duplicates if any
student_scores <- student_scores[!duplicated(student_scores), ]

# Handle missing values (Example: remove rows with NAs)
student_scores <- na.omit(student_scores)

student_scores <- student_scores %>%
  mutate(
    total_score = math_score + reading_score + writing_score,
    percentage = round((total_score / 300) * 100, 1),
    age_group = case_when(
      student_id %% 3 == 0 ~ "15-16",
      student_id %% 3 == 1 ~ "17-18",
      student_id %% 3 == 2 ~ "19-20"
    )
  )
group_summary <- student_scores %>%
  group_by(age_group, gender) %>%
  summarise(
    avg_percentage = mean(percentage, na.rm = TRUE),
    avg_math = mean(math_score, na.rm = TRUE),
    avg_reading = mean(reading_score, na.rm = TRUE),
    avg_writing = mean(writing_score, na.rm = TRUE),
    .groups = "drop"
  )
# Bar chart: Average percentage by age group
library(ggplot2)

ggplot(group_summary, aes(x = age_group, y = avg_percentage, fill = age_group)) +
  geom_bar(stat = "identity") +
  labs(
    title = "Average Percentage by Age Group",
    x = "Age Group",
    y = "Average Percentage"
  ) +
  theme_minimal()

# Scatter plot: Math vs Reading scores
ggplot(student_scores, aes(x = math_score, y = reading_score, color = gender)) +
  geom_point() +
  labs(
    title = "Relationship Between Math and Reading Scores",
    x = "Math Score",
    y = "Reading Score"
  ) +
  theme_light()
