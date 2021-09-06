setwd("C:/DataScience")

#Reading the csv file
indicators <- read.csv(
  file = "UN98.csv",
  header = TRUE,
  sep = ",",
  quote = "\"")

#Eliminating the missing values so the evaluations can be done
indicators <- na.omit(indicators)

head(indicators)

library(ggplot2)

#Creating a frequency bar chart
ggplot(
  data = indicators,
  aes(x = region)) +
  geom_bar() +
  ggtitle("Count of Countries by Common Constinants") +
  xlab("Constinant") + 
  ylab("Count of Countries")

#Creating a histogram
ggplot(
  data = indicators,
  aes(x = lifeFemale)) +
  geom_histogram(
    bins = 10) +
  ggtitle("Distribution of Average Lifetime of Females") +
  xlab("Year") +
  ylab("Count of Females")

#Creating a density plot
ggplot(
  data = indicators,
  aes(x = infantMortality)) +
  geom_density() +
  ggtitle("Distribution of Infant Mortality") +
  xlab("Infant Mortality") +
  ylab("Density")

#Creating a scatterplot
ggplot(
  data = indicators,
  aes(x = region,
      y = tfr)) +
  geom_point() +
  ggtitle("The Fertility Rates on Each Constinent")
  xlab("Constinent")
  ylab("The Fertility Rate")
