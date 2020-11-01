# MechaCar_Statistical_Analysis
My boss, Jeremy was approached by upper management about a special project. AutosRUs’ newest prototype, the MechaCar, is suffering from production troubles that are blocking the manufacturing team’s progress. AutosRUs’ upper management has called on Jeremy and the data analytics team to review the production data for insights that may help the manufacturing team. Using the R programming languge we were able to preform a varity of statistaical tests on the dataset to determine the best model for our MechaCars! There are 50 different MechaCar models that we tested. 
## Linear Regression to Predict MPG
The first study we conducted was a linear regression that predicts the mpg of MechaCar prototypes using several variables from our dataset. 
![Dev_1](https://user-images.githubusercontent.com/68392225/97732000-dd510d00-1aa3-11eb-8341-e9b6e70a93ff.png)

Our null Hypothesis (H0) is the slope of the linear model is 0, indicating that there is no significant linear relationship. While our alternative hypothesis (Ha) is the slope of the linear model is not 0, indicating a linear relationship between at least some of the variables. The variables that provided a non-random amount of variance to the mpg values in the dataset were Vehicle Length, Ground Clearance, and the intercept. Because those are significant, we can reject our null hypothesis. Our R2 value is 0.71, which indicates a strong correlation, but includes factors that are not statistacally significant. 

## Summary Statistics on Suspension Coils
The design specifications for the MechaCar suspension coils dictate that the variance of the suspension coils must not exceed 100 pounds per square inch.

![Dev_2-Lot](https://user-images.githubusercontent.com/68392225/97808289-adcd0c80-1c2b-11eb-850d-2aac5c0d9116.png)

We created a total summary data frame of the coil suspension for the MechaCars. Our results were only 76.2 pounds per square inch over all manufacturing lots! We weren't quite confident with that so we reran the results by splitting the cars into three different lots. 

![Dev_2-Mean](https://user-images.githubusercontent.com/68392225/97808364-1e742900-1c2c-11eb-9bed-f47287b69459.png)

Looking at these results, lots 1 and 2 had low variance, while lot 3 was twice the number of pounds per square inch! Luckily we did decided to run all the lots indivdually or we might have had some trouble.

## T-Tests on Suspension Coils
Finally, we performed t-tests to determine if all manufacturing lots and each lot individually are statistically different from the population mean of 1,500 pounds per square inch. Our null hypothesis was there is no significant statistical difference between the observed sample mean and the population mean of 1500. Our alternative hypothesis was there is a significant statistical difference between the observed mean and the population mean.

![Dev_3-Test](https://user-images.githubusercontent.com/68392225/97808533-2385a800-1c2d-11eb-997c-3eac8f715fa2.png)

Our first test compares the overall sample mean from all lots. Our p-value was 0.5, which is not significant to the alpha of 0.05 so we can reject our null hypothesis. We next ran our t-test on each lot indivdually. 

![Dev_3-Lot1](https://user-images.githubusercontent.com/68392225/97808622-a444a400-1c2d-11eb-91c0-306c8b5725af.png)

Our p-value was 0.9, higher than our alpha so we reject the null hypothesis on Lot 1. 

![Dev_3-Lot2](https://user-images.githubusercontent.com/68392225/97808693-eec62080-1c2d-11eb-9ef1-f0135e6d9510.png)

Our p-value was 0.34, higher than our alpha so we reject the null hypothesis on Lot 2.

![Dev_3-Lot3](https://user-images.githubusercontent.com/68392225/97808743-351b7f80-1c2e-11eb-9e58-7345688a8f47.png)

Our p-value was 0.6, higher than our alpha so we reject the null hypothesis on Lot 3.

## Study Design: MechaCar vs Competition
In conclusion, we were asked to create a statistical study that can quantify how the MechaCar performs against the competition! To do this we needed to think of what things the consumer most wants out of car. Things like MPG, city or highway fuel efficiency, safety ratings, make and model, maintenance cost, or horse power. To me, the things that would be most important to the consumer our MPG and durablity(maintenance, how long it'll last). Our null hypothesis would be is the slope of the linear model is 0, indicating that there is no significant linear relationship to MPG and durability. Our alternative hypthesis is the slope of the linear model is not 0, indicating a linear relationship between at least some of the variables. We would preform multiple linear regressions, as there are a lot of factors that consumers look at when purchasing a new vehicle. We would need to break MPG into highway and city MPG, durablity, maintenance costs, vehicle size, safety ratings, and data on types of cars bought for the last few years. 

