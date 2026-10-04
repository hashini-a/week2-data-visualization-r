# week2-data-visualization-r
Week 2 internship project on data visualization and insight communication using R and the Titanic dataset.
# Week 2 - Data Visualization and Insight Communication using R

## Project Title

Data Visualization and Insight Communication using R

## Project Overview

This project is part of Week 2 of the internship program. The objective is to create meaningful and informative visualizations using R.

The Titanic dataset used in Week 1 is continued for this project. Different visualization techniques are applied to understand trends, relationships, distributions, and patterns within the dataset.

The project uses R visualization libraries and focuses on communicating analytical findings in a simple and understandable manner.

## Objectives

The main objectives of this project are:

* Understand the selected dataset.
* Identify important variables for visualization.
* Create different types of charts using R.
* Visualize distributions and relationships.
* Identify trends and patterns.
* Detect possible anomalies.
* Compare groups using visualizations.
* Communicate insights to a non-technical audience.
* Document R code and visualization outputs.

## Dataset

### Dataset Name

Titanic Dataset

### Dataset Description

The Titanic dataset contains information about passengers who travelled on the RMS Titanic.

The dataset contains numerical and categorical variables.

Important variables include:

| Variable    | Description                       | Type        |
| ----------- | --------------------------------- | ----------- |
| PassengerId | Passenger identification number   | Numerical   |
| Survived    | Survival status                   | Binary      |
| Pclass      | Passenger class                   | Categorical |
| Sex         | Passenger gender                  | Categorical |
| Age         | Passenger age                     | Numerical   |
| SibSp       | Number of siblings/spouses aboard | Numerical   |
| Parch       | Number of parents/children aboard | Numerical   |
| Fare        | Passenger fare                    | Numerical   |
| Embarked    | Port of embarkation               | Categorical |

## Tools and Technologies

* R
* RStudio
* ggplot2
* dplyr
* CSV

## Visualization Techniques

The following visualization techniques are used:

1. Histogram
2. Bar chart
3. Scatter plot
4. Boxplot
5. Density plot
6. Survival-rate chart
7. Correlation heatmap

## Project Structure

```text
week2-data-visualization-r/
│
├── README.md
│
├── data/
│   └── titanic_cleaned.csv
│
├── R/
│   └── data_visualization.R
│
├── output/
│   ├── age_histogram.png
│   ├── survival_by_gender.png
│   ├── survival_by_class.png
│   ├── age_fare_scatter.png
│   ├── fare_boxplot.png
│   ├── age_density.png
│   ├── survival_rate_class.png
│   └── correlation_heatmap.png
│
├── report/
│   └── Week2_Data_Visualization_Report.docx
│
└── screenshots/
    ├── dataset_import.png
    ├── histogram_output.png
    ├── bar_chart_output.png
    ├── scatter_plot_output.png
    └── R_output.png
```

## Visualizations and Purpose

### 1. Age Histogram

The histogram shows the distribution of passenger ages.

It helps identify:

* Common age groups
* Distribution shape
* Concentration of passengers
* Possible unusual values

### 2. Survival by Gender

The bar chart compares the number of survivors and non-survivors by gender.

This visualization helps identify differences in survival outcomes between male and female passengers.

### 3. Survival by Passenger Class

The bar chart compares survival across different passenger classes.

This helps identify whether passenger class was associated with survival.

### 4. Age and Fare Scatter Plot

The scatter plot shows the relationship between passenger age and fare.

It helps identify:

* Relationships between variables
* Clusters
* Unusual observations
* General data patterns

### 5. Fare Boxplot

The boxplot shows the distribution of passenger fares and helps identify possible outliers.

### 6. Age Density Plot

The density plot provides a smooth representation of the age distribution.

### 7. Survival Rate by Class

This visualization shows the percentage of passengers who survived within each passenger class.

### 8. Correlation Heatmap

The correlation heatmap displays relationships between numerical variables.

## Key Insights

The visual analysis provides several initial observations:

* Passenger survival differs between genders.
* Passenger class shows a noticeable relationship with survival.
* Passenger ages are concentrated within particular age ranges.
* Fare values have considerable variation.
* Some fare values appear as potential outliers.
* Age and fare do not show a strong simple linear relationship.
* Correlation analysis helps identify relationships between numerical variables.

## Running the Project

1. Install R and RStudio.
2. Clone or download the repository.
3. Place `titanic_cleaned.csv` inside the `data` folder.
4. Open RStudio.
5. Open `R/data_visualization.R`.
6. Install required packages if necessary.
7. Run the R script.
8. Check the generated visualizations inside the `output` folder.

## Conclusion

This project demonstrates how R can be used to transform data into meaningful visual information.

Different visualization techniques were selected based on the type of question being analyzed. The visualizations make it easier to identify patterns, compare groups, understand distributions, and communicate findings to non-technical audiences.

## Author

Internship Week 2 Project

**Project:** Data Visualization and Insight Communication using R

**Language:** R

**IDE:** RStudio
