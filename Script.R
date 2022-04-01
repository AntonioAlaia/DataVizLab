library(tidyverse)
library(rio)

data <- import("DataDef.csv")

view(data)

plot <- ggplot(data, aes(x=student_faculty_ratio, y=score)) +
  geom_point() +
  geom_smooth(method=lm , color="red", se=FALSE) +
  theme_bw()

plot

plot <- ggplot(data, aes(x=student_faculty_ratio, y=ranking_display)) +
  geom_point() +
  geom_smooth(method=lm , color="red", se=FALSE) +
  theme_bw()



### TRY TO DO THE SAME THING BUT WITH MORE UNIVER AND BEESWARM!!!

new_df <- subset(df, c != 13) 

bigdata <- import("qs-world-university-rankings-2017-to-2022-V2.csv")

bigdata <- subset(bigdata, year != "2018") 
bigdata <- subset(bigdata, year != "2017") 
bigdata <- subset(bigdata, year != "2019") 
bigdata <- subset(bigdata, year != "2020") 
bigdata <- subset(bigdata, year != "2021") 

view(bigdata)

bigdata <- subset(bigdata, region != "Latin America") 
bigdata <- subset(bigdata, region != "North America") 
bigdata <- subset(bigdata, region != "Africa") 
bigdata <- subset(bigdata, region != "Asia") 
bigdata <- subset(bigdata, region != "Oceania") 

ggplot(bigdata, aes(x=student_faculty_ratio, y=score)) +
  geom_point() +
  geom_smooth(method=lm , color="red", se=FALSE) +
  theme_bw()

export(bigdata,"europe.csv")
