---
title: "CodeBook"
author: "Jennifer Mulvey"
date: "OCTOBER 25, 2015"
output: html_document
---

This is an R Markdown document. Markdown is a simple formatting syntax for authoring HTML, PDF, and MS Word documents. For more details on using R Markdown see <http://rmarkdown.rstudio.com>.
Introduction

The script run_analysis.Rperforms the 5 steps described in the course project's definition.

    The similar data is merged using the rbind() function. Only those columns with the mean and standard deviation measures are taken from the whole dataset. After extracting these columns, they are given the correct names, taken from features.txt.
    As activity data is addressed with values 1:6, the activity names and IDs from activity_labels.txt and they are substituted in the dataset.
  The columns with fuzzy column names are renamed.
    A new dataset with all the average measures for each subject and activity type (30 subjects * 6 activities = 180 rows). The output file is called averages_data.txt, and uploaded to this repository.

Variables

    x_train, y_train, x_test, y_test, subject_train and subject_test contain the data from the downloaded files.
    x_data, y_data and subject_data merge the previous datasets to further analysis.
    features contains the correct names for the x_data dataset, which are applied to the column names stored in mean_and_std_features, a numeric vector used to extract the desired data.
    A similar approach is taken with activity names through the activities variable.
    all_data merges x_data, y_data and subject_data in a big dataset.
    Finally, averages_data contains the relevant averages which will be later stored in a .txt file. ddply() from the plyr package is used to apply colMeans() and ease the development.


When you click the **Knit** button a document will be generated that includes both content as well as the output of any embedded R code chunks within the document. You can embed an R code chunk like this:

```{r}
summary(cars)
```

You can also embed plots, for example:

```{r, echo=FALSE}
plot(cars)
```

Note that the `echo = FALSE` parameter was added to the code chunk to prevent printing of the R code that generated the plot.
