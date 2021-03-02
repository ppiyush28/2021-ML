#Linear regresion

#data
mouse <- data.frame(wt=c(1,2,4,5,0),size=c(1,2,4,5,7))

#plot
plot(mouse$wt,mouse$size)

#LR function - lm

mouse.reg <- lm(wt~size,data=mouse)

#summary of lm
summary(mouse.reg)

# Call:
#   lm(formula = wt ~ size, data = mouse)
# 
# Residuals:
#   1       2       3       4       5 
# -1.3509 -0.3684  1.5965  2.5789 -2.4561 
# 
# Coefficients:
#   Estimate Std. Error t value Pr(>|t|)
# (Intercept)  2.33333    2.18537   1.068    0.364
# size         0.01754    0.50136   0.035    0.974
# 
# Residual standard error: 2.394 on 3 degrees of freedom
# Multiple R-squared:  0.000408,	Adjusted R-squared:  -0.3328 
# F-statistic: 0.001224 on 1 and 3 DF,  p-value: 0.9743


abline(mouse.reg,col='blue')
