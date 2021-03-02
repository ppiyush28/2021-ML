Mouse_M <- data.frame(wt=c(1,2,3,4),size=c(1,2,3,4),tail=c(2,3,4,5))


plot(Mouse_M$wt,Mouse_M$size)
SL <- lm(wt~size,data=Mouse_M) 
summary(SL)

abline(SL,col="Orange")

#---- Multiple LR

#Plot
plot(Mouse_M)

Mut_LR <- lm(size ~ wt+tail,data=Mouse_M)
summary(Mut_LR)


# Call:
#   lm(formula = size ~ wt + tail, data = Mouse_M)
# 
# Residuals:
#   1 2 3 4 
# 0 0 0 0 
# 
# Coefficients: (1 not defined because of singularities)
# Estimate Std. Error t value Pr(>|t|)    
# (Intercept)        0          0      NA       NA    
# wt                 1          0     Inf   <2e-16 ***
#   tail              NA         NA      NA       NA    
# ---
#   Signif. codes:  0 '***' 0.001 '**' 0.01 '*' 0.05 '.' 0.1 ' ' 1
# 
# Residual standard error: 0 on 2 degrees of freedom
# Multiple R-squared:      1,	Adjusted R-squared:      1 
# F-statistic:   Inf on 1 and 2 DF,  p-value: < 2.2e-16
# 
# Warning message:
#   In summary.lm(Mut_LR) : essentially perfect fit: summary may be unreliable
# > Mut_LR <- lm(size ~ wt+tail,data=Mouse_M)
# > summary(Mut_LR)
# 
# Call:
#   lm(formula = size ~ wt + tail, data = Mouse_M)
# 
# Residuals:
#   1 2 3 4 
# 0 0 0 0 
# 
# Coefficients: (1 not defined because of singularities)
# Estimate Std. Error t value Pr(>|t|)    
# (Intercept)        0          0      NA       NA    
# wt                 1          0     Inf   <2e-16 ***
#   tail              NA         NA      NA       NA    
# ---
#   Signif. codes:  0 '***' 0.001 '**' 0.01 '*' 0.05 '.' 0.1 ' ' 1
# 
# Residual standard error: 0 on 2 degrees of freedom
# Multiple R-squared:      1,	Adjusted R-squared:      1 
# F-statistic:   Inf on 1 and 2 DF,  p-value: < 2.2e-16
