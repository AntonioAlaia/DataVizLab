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