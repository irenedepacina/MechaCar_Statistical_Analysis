# Deliverable 1

# Import library and load the dplyr package
library(dplyr)

# Import and read CSV file as DataFrame
MechCar_mpg <- read.csv(file='MechaCar_mpg.csv', check.names=F, stringsAsFactors = F)

MechCar_mpg <- rename(MechCar_mpg, vehicle_length = 'vehicle length',
                      vehicle_weight = 'vehicle weight',
                      spoiler_angle = 'spoiler angle',
                      ground_clearance = 'ground clearance')

# Linear regression using the lm() function and create a linear model
reg <- lm(mpg ~ vehicle_length + vehicle_weight + spoiler_angle + ground_clearance + AWD, data=MechCar_mpg)

# Summarize linear model
summary(reg)
