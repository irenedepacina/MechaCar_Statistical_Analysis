# DELIVERABLE 1

# Import library and load the dplyr package
library(dplyr)

# Import and read CSV file as DataFrame
mechCar_mpg <- read.csv(file='MechaCar_mpg.csv', check.names = F, stringsAsFactors = F)

mechCar_mpg <- rename(MechCar_mpg, vehicle_length = 'vehicle length',
                      vehicle_weight = 'vehicle weight',
                      spoiler_angle = 'spoiler angle',
                      ground_clearance = 'ground clearance')

# Linear regression using the lm() function and create a linear model
reg <- lm(mpg ~ vehicle_length + vehicle_weight + spoiler_angle + ground_clearance + AWD, data=mechCar_mpg)

# Summarize linear model
summary(reg)

# DELIVERABLE 2

# Import and read CSV file as a DataFrame
suspensionCoil <- read.csv(file='Suspension_COil.csv', check.names = F, stringsAsFactors = F)

library(tidyverse)

totalSummary <- suspensionCoil %>% summarize(Mean=mean(PSI), Median=median(PSI), Variance=var(PSI), SD=sd(PSI))

lotSummary <- suspensionCoil %>% group_by(Manufacturing_Lot) %>% summarize(Mean=mean(PSI), Median=median(PSI), Variance=var(PSI), SD=sd(PSI))

# DEVLIERABLE 3

?t.test()

t.test(suspensionCoil$PSI,mu=1500)

Lot1 <- subset(suspensionCoil, Manufacturing_Lot == 'Lot1')
Lot2 <- subset(suspensionCoil, Manufacturing_Lot == 'Lot2')
Lot3 <- subset(suspensionCoil, Manufacturing_Lot == 'Lot3')

t.test(Lot1$PSI,mu=1500)
t.test(Lot2$PSI,mu=1500)
t.test(Lot3$PSI,mu=1500)
