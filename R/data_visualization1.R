# ============================================
# WEEK 2
# DATA VISUALIZATION AND INSIGHT COMMUNICATION
# ============================================

# Install packages if required
# install.packages("ggplot2")
# install.packages("dplyr")

library(ggplot2)
library(dplyr)

# ============================================
# 1. IMPORT DATASET
# ============================================

data <- read.csv(
  "data/titanic_cleaned.csv",
  stringsAsFactors = FALSE
)

# ============================================
# 2. INITIAL DATA INSPECTION
# ============================================

print(head(data))

print(str(data))

print(summary(data))

print(dim(data))

# Convert categorical variables

data$Sex <- as.factor(data$Sex)

data$Pclass <- as.factor(data$Pclass)

# ============================================
# 3. AGE HISTOGRAM
# ============================================

png(
  "output/age_histogram.png",
  width = 1000,
  height = 700
)

ggplot(
  data,
  aes(x = Age)
) +
  geom_histogram(
    bins = 30,
    fill = "steelblue",
    color = "black"
  ) +
  labs(
    title = "Age Distribution of Titanic Passengers",
    x = "Age",
    y = "Number of Passengers"
  ) +
  theme_minimal()

dev.off()

# ============================================
# 4. SURVIVAL BY GENDER
# ============================================

png(
  "output/survival_by_gender.png",
  width = 1000,
  height = 700
)

ggplot(
  data,
  aes(
    x = Sex,
    fill = factor(Survived)
  )
) +
  geom_bar() +
  labs(
    title = "Survival by Gender",
    x = "Gender",
    y = "Number of Passengers",
    fill = "Survived"
  ) +
  theme_minimal()

dev.off()

# ============================================
# 5. SURVIVAL BY PASSENGER CLASS
# ============================================

png(
  "output/survival_by_class.png",
  width = 1000,
  height = 700
)

ggplot(
  data,
  aes(
    x = Pclass,
    fill = factor(Survived)
  )
) +
  geom_bar() +
  labs(
    title = "Survival by Passenger Class",
    x = "Passenger Class",
    y = "Number of Passengers",
    fill = "Survived"
  ) +
  theme_minimal()

dev.off()

# ============================================
# 6. AGE VS FARE SCATTER PLOT
# ============================================

png(
  "output/age_fare_scatter.png",
  width = 1000,
  height = 700
)

ggplot(
  data,
  aes(
    x = Age,
    y = Fare,
    color = factor(Survived)
  )
) +
  geom_point(
    alpha = 0.6
  ) +
  labs(
    title = "Relationship Between Age and Fare",
    x = "Age",
    y = "Fare",
    color = "Survived"
  ) +
  theme_minimal()

dev.off()

# ============================================
# 7. FARE BOXPLOT
# ============================================

png(
  "output/fare_boxplot.png",
  width = 1000,
  height = 700
)

ggplot(
  data,
  aes(y = Fare)
) +
  geom_boxplot() +
  labs(
    title = "Fare Distribution and Outliers",
    y = "Fare"
  ) +
  theme_minimal()

dev.off()

# ============================================
# 8. AGE DENSITY PLOT
# ============================================

png(
  "output/age_density.png",
  width = 1000,
  height = 700
)

ggplot(
  data,
  aes(x = Age)
) +
  geom_density() +
  labs(
    title = "Age Density Distribution",
    x = "Age",
    y = "Density"
  ) +
  theme_minimal()

dev.off()

# ============================================
# 9. SURVIVAL RATE BY CLASS
# ============================================

survival_rate <- data %>%
  group_by(Pclass) %>%
  summarise(
    Survival_Rate = mean(Survived) * 100
  )

print(survival_rate)

png(
  "output/survival_rate_class.png",
  width = 1000,
  height = 700
)

ggplot(
  survival_rate,
  aes(
    x = Pclass,
    y = Survival_Rate
  )
) +
  geom_col(
    fill = "steelblue"
  ) +
  labs(
    title = "Survival Rate by Passenger Class",
    x = "Passenger Class",
    y = "Survival Rate (%)"
  ) +
  theme_minimal()

dev.off()

# ============================================
# 10. CORRELATION HEATMAP
# ============================================

numeric_data <- data %>%
  select(
    Survived,
    Age,
    SibSp,
    Parch,
    Fare
  )

correlation_matrix <- cor(
  numeric_data,
  use = "complete.obs"
)

print(correlation_matrix)

png(
  "output/correlation_heatmap.png",
  width = 1000,
  height = 700
)

heatmap(
  correlation_matrix,
  main = "Correlation Heatmap"
)

dev.off()

# ============================================
# 11. SAVE CORRELATION MATRIX
# ============================================

write.csv(
  correlation_matrix,
  "output/correlation_matrix.csv"
)

# ============================================
# 12. FINAL OUTPUT
# ============================================

print("All visualizations generated successfully.")

print("Week 2 data visualization analysis completed.")
