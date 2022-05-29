# MechaCar_Statistical_Analysis

## Linear Regression to Predict MPG

From the input data found in MechaCar_mpg.csv, a linear regression analysis was performed.  This showed that vehicle length and ground clearance provided a non-random amount of variance to the mpg values in the dataset as shown below in the summary results in the "Pr(>|t|) column.
![Linear Regression](results/mpg_lm.png)

![Linear Regression Summary](results/mpg_lm_summary.png)

From our linear regression model, the r-squared value is 0.72, which means that roughly 72% of the variablilty of our dependent variable (miles per gallon) is explained using this linear model. Vehicle lenth and ground clearance has the most siginificant correlatino impact, while vehicle weight has some impact.  Spoiler angle and AWD do not correlated to MPG.

The slope of the linear model would not be considered zero because of the correlation between MPG and the values mentioned above.

This linear modem gives insights as to how vehicle length and ground clearance influence MPG, but there would still be additional data to collect to provide the full picture on all the items that influence MPG.

## Summary Statistics on Suspension Coils
The design specifications for the MechaCar suspension coils dictate that the variance of the suspension coils must not exceed 100 pounds per square inch. Based on the below summarized data of spring PSI from each Lot, the current manufacturing data meet does/doesnot meet 

this design specification for all manufacturing lots in total and each lot individually? Why or why not?

Summary of all springs PSI data:
![PSI Summary](results/PSI_summary.png)

Summary of springs PSI data broken down by Lot number:
![Lot Summary](results/Lot_summary.png)
