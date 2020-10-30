library(tidyverse)
library(dplyr)
library(ggplot2)
MechaCar_table <- read.csv(file='MechaCar_mpg.csv',check.names=F,stringsAsFactors = F)
MechaCarData <- MechaCar_table
lm(mpg ~ vehicle_length + vehicle_weight + spoiler_angle + ground_clearance + AWD,data=MechaCarData) #generate multiple linear regression model
summary(lm(mpg ~ vehicle_length + vehicle_weight + spoiler_angle + ground_clearance + AWD,data=MechaCarData)) #generate summary statistics

Suspension_table <- read.csv(file='Suspension_Coil.csv',check.names=F,stringsAsFactors = F)
total_summary <- Suspension_table %>% summarize(Mean_PSI=mean(PSI),Median_PSI=median(PSI),Var_PSI=var(PSI), SD_PSI=sd(PSI), .groups = 'keep') #create summary table with multiple columns
lot_summary <- Suspension_table %>% group_by(Manufacturing_Lot) %>% summarize(Mean_PSI=mean(PSI),Median_PSI=median(PSI),Var_PSI=var(PSI), SD_PSI=sd(PSI), .groups = 'keep') #create summary table with multiple columns

t.test(Suspension_table$PSI, mu = 1500) #compare sample versus population means
lot1 <- subset(Suspension_table, Manufacturing_Lot =="Lot1")
lot2 <- subset(Suspension_table, Manufacturing_Lot =="Lot2")
lot3 <- subset(Suspension_table, Manufacturing_Lot =="Lot3")
t.test(lot1$PSI, mu = 1500)
t.test(lot2$PSI, mu = 1500)
t.test(lot3$PSI, mu = 1500)

ggplot(lot1,aes(x=PSI)) + geom_density()
ggplot(lot2,aes(x=PSI)) + geom_density()
ggplot(lot3,aes(x=PSI)) + geom_density()
ggplot(Suspension_table, aes(x=PSI)) + geom_density()
shapiro.test(Suspension_table$PSI)