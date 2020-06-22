library(jsonlite)
library(tidyverse)

mpg_data <- read.csv(file='MechaCar_mpg.csv',check.names=F,stringsAsFactors = F)

lm(mpg ~ `vehicle length` + `vehicle weight` + `spoiler angle` + `ground clearance`,data=mpg_data)
summary(lm(mpg ~ `vehicle length` + `vehicle weight` + `spoiler angle` + `ground clearance`,data=mpg_data))


suspension_data <- read.csv(file="Suspension_Coil.csv", check.name=F, stringsAsFactors=F)

summary_overall <- suspension_data %>% summarize(Mean_PSI=mean(PSI), Median_PSI=median(PSI), Var_PSI=var(PSI), Std_Dev_PSI=sd(PSI))

summary_by_lot <- suspension_data %>% group_by(Manufacturing_Lot) %>% summarize(Mean_PSI=mean(PSI), Median_PSI=median(PSI), Var_PSI=var(PSI), Std_Dev_PSI=sd(PSI))

t.test(suspension_data$PSI, mu=1500)