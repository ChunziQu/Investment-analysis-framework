# Investment-analysis-framework
Those files are for the paper titled "Comparative Investment Analysis of Wind and Nuclear Energy: Assessing the Impact of Changes in the Electricity Mix and Required Government Support for Investment Parity " by Chunzi Qu & Rasmus Bang.\
This paper conducts a new investment analysis framework to make comparative studies about the investment efficiency for four energy projects (onshore wind, offshore wind, traditinal nuclear, and modular nuclear) under differenrt market conditions. The conditions include market electricity price, wind share in the electricity mix, without and with financial support from energy policies. \
We have made our codes and data files available here for interested researchers. This short guide gives a quick overview of the files used to produce the results presented in the paper.\
\
This repository contains five files:\
1 excel file named "Investment analysis framework". The first sheet named "Investment analysis model" contains all five modules in the investment analysis framework in this paper. The second sheet names "Price regression model" is the results from the two files named "Regression model". The regression model is part of the revenue module in the first sheet so the second sheet is linked and extracted to be used somewhere in the first sheet to make further calculations. \
2 files (dta. and do.) named "Regression model". They are used to make the regressions to estimate the volume weighted average electricity price of wind and nuclear (Equations 2 and 4 in the paper) so that to calculate the revenue of different projects. These two files are relevant with the "Revenue module" in the paper (section 2.2).\
2 files (dta. and do.) named "Investment analysis model". They use the results obtained in the excel file as the raw data for the graphical presentation of the results. The results from these two files are Figures 2,3,4,5,6,7,8 in Section 3 in the paper. \
\
We recommend the following sequence to familiarize with the above files:\
Step 1: Open the excel file and browse through it to get a general understanding of the structure, data contained, various variables and their changes corresponding to different scenarios, and the output form of the results, of the entire investment analysis framework.\
Step 2: Open the two regression model files in STATA to see how we use the observable market average electricity price and the real wind share to estimate the unobservable unit returns for wind and nuclear power generation. They include our process of selecting an appropriate model and testing the characteristics of the database. In this way, researchers can confirm the validity of the estimation equations in the second sheet in the excel file by knowing how they were obtained.\
Step 3: After studying the excel file, researchers can use the dta. and do. files named "investment analysis model" to replicate the process of converting the numeric results from excel file into intuitive figures in STATA.\
\
We are honored that you are interested in our paper.
