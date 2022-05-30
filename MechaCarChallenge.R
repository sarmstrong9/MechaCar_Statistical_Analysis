install.packages("tidyverse")

library(dplyr)


# Deliverable 1 - Linear Regression to Predict MPG
MechaCar_table <- read.csv(file='MechaCar_mpg.csv',check.names=F,stringsAsFactors = F)

lm(mpg ~ vehicle_length + vehicle_weight + spoiler_angle + ground_clearance + AWD, data=MechaCar_table)

summary(lm(mpg ~ vehicle_length + vehicle_weight + spoiler_angle + ground_clearance + AWD, data=MechaCar_table))

####################################################################################

# Deliverable 2 - Create Visualizations for the Trip Analysis
Suspension_table <- read.csv(file='Suspension_Coil.csv',check.names=F,stringsAsFactors = F)

total_summary <- Suspension_table %>% summarize(Mean=mean(PSI), Median=median(PSI), Variance=var(PSI), SD=sd(PSI))

lot_summary <- Suspension_table %>% group_by(Manufacturing_Lot) %>%  summarize(Mean=mean(PSI), Median=median(PSI), Variance=var(PSI), SD=sd(PSI), .groups = 'keep') #create summary table

####################################################################################

#Deliverable 3 - T-Tests on Suspension Coils
?t.test()

t.test(Suspension_table$PSI, mu=1500) # T-test on all springs data compared to avg of 1500

Spring_lot1 <- Suspension_table %>% filter(Manufacturing_Lot=='Lot1') #Filter only Lot 1 Data
Spring_lot2 <- Suspension_table %>% filter(Manufacturing_Lot=='Lot2') #Filter only Lot 2 Data
Spring_lot3 <- Suspension_table %>% filter(Manufacturing_Lot=='Lot3') #Filter only Lot 3 Data

t.test(Spring_lot1$PSI, mu=1500) # T-test on springs from Lot 1 compared to avg of 1500
t.test(Spring_lot2$PSI, mu=1500) # T-test on springs from Lot 2 compared to avg of 1500
t.test(Spring_lot3$PSI, mu=1500) # T-test on springs from Lot 3 compared to avg of 1500




