******* Qu & bang **********************************************
***"Comparative Investment Analysis of Wind and Nuclear Energy: Assessing the Impact of Changes in the Electricity Mix and Required Government Support for Investment Parity"*************************



******* STEP 1: CHOOSE APPROPRIATE PANEL ANALYSIS MODEL***********************

********first for wind volume weighted electricity price**********
xtreg D_Pwind D_Pbar S, fe
estimates store fe_wind
xtreg D_Pwind D_Pbar S, re
estimates store re_wind

hausman fe_wind re_wind
// the result show that the p-value is less than 0.05 so that we can reject the null hypothesis and conclude that the fixed effect is more appropriate, becasue there is no significant difference in coefficients.

* By caution, we use the LM estimator to test  whether the pooled OLS id better
xttest0
// the results show that the p-value is significant so that we should reject the pooled OLS.

* Heteroskedasticity test
xttest3
// result show that there is heteroskedasticity issue for this fe model, so we need to robust it. 

// So, the results show that we should use robust fe model. 
xtreg D_Pwind D_Pbar S, robust fe


*******Then for Diff***********************************************
xtreg D_diff D_Pbar S, re
estimate store re_diff
xtreg D_diff D_Pbar S, fe
estimate store fe_diff

hausman fe_diff re_diff
// results show that the p value is smaller than 0.05 and conclude that the fe is more appropriate.

xttest0
// results show that pooled OLS is not good. 

xttest3
// result show that there is heteroskedasticity issue for this fe model, so we need to robust it. 

// So, for Diff, we also choose robust fe model.
xtreg D_diff D_Pbar S, robust fe


*******STEP 2: CHECK THE CHARACTERISTICS OF THE DATABASE****************

*****  check the potential endogeneity problem in two models************
xtreg D_Pwind D_Pbar S, robust fe
predict residual_reswind, e
xtreg D_Pbar S, robust fe
predict residual_resaverage, e
corr residual_reswind residual_resaverage,co

xtreg D_diff D_Pbar S, robust fe
predict residual_resdiff, e
xtreg D_Pbar S, robust fe
predict residual_resaverage, e
corr residual_resdiff residual_resaverage,co
// results show that cov is very small so that we can conclude that there is no significant endogeneity issue in this model

*****************Check the serial correlation**************************
xtserial D_Pwind D_Pbar S
xtserial D_diff D_Pbar S
// results that p value is very large so that we can conclude that there is no first order autocorrelation in these models

****************** check the multicollinearity************************
reg D_Pwind D_Pbar S
vif
reg D_diff D_Pbar S
vif
// Results show that the vif is much smaller than 10, so that we can say there is no significant multicollinearity issue in two models.

*******************Fitness check***************************************
xtreg D_Pwind D_Pbar S, robust fe
predict DPwindhat
xtreg D_diff D_Pbar S, robust fe
predict Ddiffhat

xtline D_Pwind DPwindhat,xtitle(time) lcolor(green orange) ytitle(D_Pwind (euros/MWh)) legend(label(1 "Real values") label(2 "Estimated values")) byopts(title("Volume weighted average electricity price of wind")) xlabel(#9) xlabel(, angle(vertical))

xtline D_diff Ddiffhat,xtitle(time) lcolor(green orange) ytitle(D_diff (euros/MWh)) legend(label(1 "Real values") label(2 "Estimated values")) byopts(title("Difference between nuclear and wind electricity price") note("Note:D_diff = D_Pnuclear - D_Pwind")) xlabel(660(12)755) xlabel(, angle(vertical))
// Results show that the two models have high degree of fitness.


**********STEP 3: SUMMARY************************************************
*** Euqation (2) in the paper******
xtreg D_Pwind D_Pbar S, robust fe
*** Euqation (4) in the paper******
xtreg D_diff D_Pbar S, robust fe