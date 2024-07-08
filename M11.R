# loading necessary packages:

library(dplyr)
library(tibble)
library(ggplot2)

# --------------------------------------- #

# Exercise 11.1.

install.packages("tidyverse")
library(tidyverse)

# ----------------EXERCISES-------------------- #

# Exercise 11.2.

scores <- 
  tibble(
    name = c("mike", "carol", "greg", "marcia", "peter", "jan", "bobby", "cindy", "alice"),
    school = c("south", "south", "south", "south", "north", "north", "north", "south", "south"),
    teacher = c("johnson", "johnson", "johnson", "johnson",  "smith", "smith", "smith", "perry", "perry"),
    sex = c("male", "female", "male", "female", "male", "female", "male", "female", "female"),
    math_score = c(4, 3, 2, 4, 3, 4, 5, 4, 5),
    reading_score = c(1, 5, 2, 4, 5, 4, 1, 5, 4)
  )

# --------------------------------------- #

# Exercise 11.3.

View(scores)
# Could also just do:
scores

# --------------------------------------- #

# Exercise 11.4.

# Get the first three rows by using slice():
sliced_scores <- scores %>%
  slice(1:3)
sliced_scores
View(sliced_scores)

# Could also do:
sliced_scores1 <- scores %>%
  head(3)
View(sliced_scores1)

# --------------------------------------- #

# Exercise 11.5.

scores %>%
  arrange(desc(math_score))

# --------------------------------------- #

# Exercise 11.6.

scores %>%
  arrange(name)

# --------------------------------------- #

# Exercise 11.7.

scores %>%
  arrange(sex)
          
# if you wanted to arrange with male first:
scores %>%
  arrange(desc(sex))

# --------------------------------------- #

# Exercise 11.8.

scores %>%
  arrange(school, teacher, sex, math_score, reading_score)

# --------------------------------------- #

# Exercise 11.9.

scores %>%
  select(name, math_score, reading_score)

# --------------------------------------- #

# Exercise 11.10.

scores %>%
  select(-4)

# Could also do:
scores %>%
  select(-sex)

# --------------------------------------- #

# Exercise 11.11.

scores %>%
  select(-4, -6)

# Could also do:
scores %>%
  select(-sex, -reading_score)

# --------------------------------------- #

# Exercise 11.12.

# Select all columns but sex first column:
scores %>%
  select(sex, everything())

# --------------------------------------- #

# Exercise 11.13.

# Filter by students who are male and went to South
scores %>%
  filter(sex == "male" & school == "south")

# --------------------------------------- #

# Exercise 11.14.

# Filter by students who did above average in math:
scores %>%
  filter(math_score > mean(math_score))

# --------------------------------------- #

# Exercise 11.15.

scores %>%
  filter(math_score >= 4 &reading_score >= 3)

# --------------------------------------- #

# Exercise 11.16.

scores %>%
  filter(math_score <= 3 | reading_score <= 3)

# --------------------------------------- #

# Exercise 11.17.

# filter by students who got a reading score of 2, 3 or 4:
scores %>%
  filter(reading_score == (2:4))

# --------------------------------------- #

# Exercise 11.18.

scores %>%
  filter(substr(name, 1, 1) == "m")

# --------------------------------------- #

# Exercise 11.19.

# Filter by teacher who's students got a math score of 5:
scores %>%
  group_by(teacher) %>%
  filter(max(math_score) == 5)

# --------------------------------------- #

# Exercise 11.20.

scores %>%
  group_by(sex) %>%
  filter(mean(math_score) == 4)

# --------------------------------------- #

# Exercise 11.21.

scores %>%
  mutate(math_score = math_score * 10,
         reading_score = reading_score * 10)

# --------------------------------------- #

# Exercise 11.22.

scores %>%
  mutate(math_reading_avg = (math_score + reading_score)/2)

# --------------------------------------- #

# Exercise 11.23.

# skipped

# --------------------------------------- #

# Exercise 11.24.

# skipped

# --------------------------------------- #

# Exercise 11.25.

# skipped

# --------------------------------------- #

# Exercise 11.26.

scores %>%
  group_by(sex) %>%
  mutate(math_score_centered_by_sex = math_score - mean(math_score)) %>%
  arrange(desc(math_score_centered_by_sex))

# --------------------------------------- #

# Exercise 11.27.

scores %>%
  group_by(teacher) %>%
  mutate(reading_score_centered_by_teacher = math_score - mean(math_score)) %>%
  arrange(desc(reading_score_centered_by_teacher))


# --------------------------------------- #

# Exercise 11.28.

# skipped

# --------------------------------------- #

# Exercise 11.29.

# skipped

# --------------------------------------- #

# Exercise 11.30.

# skipped

# --------------------------------------- #

# Exercise 11.31.

# skipped

# --------------------------------------- #

# Exercise 11.32.

scores %>%
  group_by(school) %>%
  summarize(min_math_score = min(math_score))

# --------------------------------------- #

# Exercise 11.33.

scores %>%
  group_by(teacher) %>%
  summarize(max_math_score = max(math_score))

# --------------------------------------- #
