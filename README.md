# Overview of the Analysis 

The purpose of this analysis was to meet the following objectives:
- Perform multiple linear regression analysis to identify which variables in the dataset predict the mpg of MechaCar prototypes
- Collect summary statistics on the pounds per square inch (PSI) of the suspension coils from the manufacturing lots
- Run t-tests to determine if the manufacturing lots are statistically different from the mean population
- Design a statistical study to compare vehicle performance of the MechaCar vehicles against vehicles from other manufacturers. For each statistical analysis, you’ll write a summary interpretation of the findings.

## Linear Regression to Predict MPG
![linear regression](https://github.com/irenedepacina/MechaCar_Statistical_Analysis/blob/main/Resources/deliverable1.png)

Which variables/coefficients provided a non-random amount of variance to the mpg values in the dataset?
- Vehicle weight
- Ground clearance

Is the slope of the linear model considered to be zero? Why or why not?
- The slope of the linear model is not zero because the coefficient values do not equal zero. 

Does this linear model predict mpg of MechaCar prototypes effectively? Why or why not?
- Since the p-value is less than 0.05, we have enough information to reject the null hypothesis. 

## Summary Statistics on Suspension Coils
![lot summary](https://github.com/irenedepacina/MechaCar_Statistical_Analysis/blob/main/Resources/lot_summary.png)
![total summary](https://github.com/irenedepacina/MechaCar_Statistical_Analysis/blob/main/Resources/total_summary.png)

The design specifications for the MechaCar suspension coils dictate that the variance of the suspension coils must not exceed 100 pounds per square inch. Does the current manufacturing data meet this design specification for all manufacturing lots in total and each lot individually? Why or why not?
- Based on the table above, Lot 1 and Lot 2 meet the design specification because the variance is 0.9795918 and 7.4693878 respectively. Unfortunately, Lot 3 fails to meet the design specifications with a suspension coil variance of 170.2861224; clearly exceeding the 100 pounds per square inch. 

## T-Tests on Suspension Coils
![suspension coil](https://github.com/irenedepacina/MechaCar_Statistical_Analysis/blob/main/Resources/t-test_suspensioncoil.png)
![lot 1](https://github.com/irenedepacina/MechaCar_Statistical_Analysis/blob/main/Resources/Lot1.png)
![lot 2](https://github.com/irenedepacina/MechaCar_Statistical_Analysis/blob/main/Resources/Lot2.png)
![lot 3](https://github.com/irenedepacina/MechaCar_Statistical_Analysis/blob/main/Resources/Lot3.png)

- Based on the p-value of the lots, we do not have enough information to reject the null hypothesis. However, since the p-value of Lot 3 is equal to 0.04168, clearly below 0.05, we have have sufficient evidence to reject the null hypothesis. 

## Study Design: MechaCar vs Competition

### Description of the Study

To see how MechaCar performs against the competition, I would collect data of the following metrics; cost, city or highway fuel efficiency, horsepower, maintenance cost, or safety rating. The data will be collected for each vehicle for MechaCar and competitive companies. The following Hypothesis will be tested:

H0: There is no statistical difference between MechaCar and competitive companies.

Ha: There is a statistical difference between MechaCar and competitive companies.

A two sample t-test would be used to test the hypothesis. The T-test will allow the company to observe if each variable that has a significant difference between MechaCar and competitive companies. The difference in each variable will allow us to conclude if there is a difference in vehicle performance of the MechaCar vehicles against vehicles from other manufacturers. The following will be compared individually between MechaCar and competitive companies: cost, city or highway fuel efficiency, horsepower, maintenance cost, or safety rating.



