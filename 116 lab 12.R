# Name: Faye Bandet
# Date: 11/18/19
# ISTA 116 Section B || Section Leader : Jacob Heller
# Lab Assignment 12
# Collaborator(s): Nick Ackerman

download.file("http://www.openintro.org/stat/data/nc.RData", destfile = "nc.RData")
load("nc.RData")

#1
by(nc$weight, nc$habit, mean)
# The mean weight of a baby with non smokeing parents is 7.144273, and the mean weight of a baby whose parents smoke is 6.82873 pounds.

#2
by(nc$weight, nc$habit, hist)
summary(nc$habit, nc)
hist(nc$weight)
# Data shows there are 873 nonsmokers and 126 people who smoke. We see that the data is normally distributed by using a histogram. We have a decently large data set, at 999 values. Ultimately we can conclude that it meets the necessary conditions for inference.

#3
# My hypothesis is that (the avegage birthweight of babies whose parents smoke will be less than babies with nonsmoking parents.) = A1, which is not equal to (smokers and nonsmokers having babies that are both close to the average birthweight) = A2.
# A1 != A2

#4
t.test(nc$weight~nc$habit)
# Theres is a signfigant differance in the the weights of smoker and nonsmoker babies. The p value shown here was 0.01945, so we reject the null hypothesis because the p vlaue is less than 0.05 which is statistically significant.

#5
t.test(nc$weight~nc$habit, conf.level = .95)
# I'd be pretty suprised because .8 pounds is pretty signigicant fraction of birthweight. However, we rejected the null hypothesis so the average difference in weight could potentially be higher that what R predicted.

#6
t.test(nc$weeks~nc$habit, conf.level = .95)
# We can't reject the null hypothesis which means that there's not a difference in the number of weeks of pregnancy that a smoker or a nonsmoker has. I wouldn't be surprised if the true average term of a pregnancy was 38.5 weeks because it is within and close to the number of weeks in an acutal pregnancy, 40, with some variation sooner or later.

#7
t.test(nc$weeks~nc$habit, conf.level = .90)
# We can't reject the null hypthesis. If we use the CI of .90 instead, the average term of a pregancy is 38.31 weeks. I wouldn't be surprised if the average term of pregnancy is 38.5 weeks like the we found in the sixth problem,  because the only thing that is changed is the confidence interval to down to .90, so the increased range of .05 will result in a longer or shorter term of pregnancy.

#8
t.test(nc$gained~nc$mature)
# The p value 0.1704 which is greater than 0.05. So we cannot reject the null hypothesis. This means there's no corrolation between the weight gained during pregnancy of a mature mother and a younger mother.

#9
t.test(nc$mage~nc$mature)
# I chose the t-test method because it shows the average cutoff of mature and young mothers. This method contains more information than other tests.I found that the average age of a mature mother is 37.18 years, and the average age of a younger mother is 25.44 years. The t-test shows where the confidence interval is so it can be more accurate in knowing the significance. 

#10
t.test(nc$mage~nc$premie)
# The null hypothesis is that the the age of the mother doesn't affect the chance that a baby would be born premature. 
# The alternative hypothesis is that the age of the mother does affect the chance the baby will be born premature.
# Null != Alternative Hypothesis
# The t-test result is that the mean age of mothers for a full term pregnancy is 27, and the mean age of mothers with premie babies is 26.875 years old. The p value is .8268, which means we keep the null hypothesis. There is no corrolation with the mother's age and the chance that a baby is born premature. This shows that premature births can be caused by young mothers and old mothers. Overall the age is averaged out.
