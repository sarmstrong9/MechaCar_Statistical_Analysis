# MechaCar_Statistical_Analysis

## Linear Regression to Predict MPG

From the input data in MechaCar_mpg.csv, a linear regression analysis was performed.  This showed that vehicle length and ground clearance provided a non-random amount of variance to the mpg values in the dataset as shown below in the summary results in the "Pr(>|t|) column.
![Linear Regression](results/mpg_lm.png)
![Linear Regression Summary](results/mpg_lm_summary.png)

From our linear regression model, the r-squared value is 0.72, which means that roughly 72% of the variablilty of our dependent variable (miles per gallon) is explained using this linear model. Vehicle lenth and ground clearance has the most siginificant correlation impact, while vehicle weight has some impact.  Spoiler angle and AWD do not correlated to MPG.

The slope of the linear model would not be considered zero because of the correlation between MPG and the values mentioned above.

This linear modem gives insights as to how vehicle length and ground clearance influence MPG, but there would still be additional data to collect to provide the full picture on all the items that influence MPG.

## Summary Statistics on Suspension Coils
The design specifications for the MechaCar suspension coils dictate that the variance of the suspension coils must not exceed 100 pounds per square inch. Based on the below summarized data of spring PSI for all springs and from each Lot, other than Lot 1 and Lot 2, do not meet this design specification because the variance is larger than 50.

- Summary of all springs PSI data:
    - ![PSI Summary](results/PSI_summary.png)
- Summary of springs PSI data broken down by Lot number:
    - ![Lot Summary](results/Lot_summary.png)

## T-Tests on Suspension Coils
Perform t-tests to determine if all manufacturing lots and each lot individually are statistically different from the population mean of 1,500 pounds per square inch.

Assuming our significance level was the common 0.05 percent, our p-values for the following results are:

- All Springs:
    - ![T-test all Springs](results/t-test_all_springs.png)
    - p-value of 0.06 so there is no statistical significance between this data and the average of 1500 PSI.
- Lot 1 Springs:
    -   ![T-test Lot 1 Springs](results/t-test_lot1_springs.png)
    - p-value of 1 so there is no statistical significance between this data and the average of 1500 PSI.
- Lot 2 Springs:
    - ![T-test Lot 2 Springs](results/t-test_lot2_springs.png)
    - p-value of 0.6 so there is no statistical significance between this data and the average of 1500 PSI.
- Lot 3 Springs:
    - ![T-test Lot 3 Springs](results/t-test_lot3_springs.png)
    - p-value of 0.04 so there is a statistical significance between this data and the average of 1500 PSI.

## Study Design: MechaCar vs Competition
A statistical study will now be created to compare performance of the MechaCar vehicles against performance of vehicles from other manufacturers.

This study will quantify how the MechaCar performs against the competition by focusing on critical metrics that would be of interest to a consumer.

- The metrics this study will test are MPG and total passenger count as related to overall sales.  This will be a prime market for expanding families that want to carry their entire family while also getting good gas mileage.
- Hypothesis:
    - The Null hypothesis is that the relationship between MPG and passenger count do not correlate to sales numbers.
    - The alternative hypothesis is that sales are directly correlated to high MPG and a high passenger count.
- The statistical test to test the hypothesis would be the ANOVA test with MPG, passenger count and overall sales as the inputs.  This test is chosen because there is more than two inputs to analyze and compare.  Analyzing all three will help show the correlation of both MPG and passenger count and their influence on overall sales.
- The data needed to run the statistical test would be average MPG data from a range of cars with different passenger counts over time, and the overall sales numbers of the respective cars.