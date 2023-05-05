******* Qu & bang **********************************************
***"Comparative Investment Analysis of Wind and Nuclear Energy: Assessing the Impact of Changes in the Electricity Mix and Required Government Support for Investment Parity"*************************


***************Section 3.1*****************************************************
******Private investment results without government financial support**********
## Figure 2
twoway line BCR_onw BCR_ofw BCR_tnp BCR_mnr S, lcolor(green orange red blue) yaxis(1) by(Pbar, rows(1) title("Benefit cost ratio of four projects") subtitle("Without government financial support") note("Note1: Discount rate=3%" "Note2: P̅ is the market average electricity price")) legend(label(1 "Onshore wind") label(2 "Offshore wind") label(3 "Traditional nuclear") label(4 "Modular nuclear")) ytitle(Benefit-cost ratio) ylabel(0(0.5)3) xlabel(0(0.2)1) ylabel(, angle(horizontal))

## Figure 3
twoway line IRR_onw IRR_ofw IRR_tnp IRR_mnr S,lcolor(green orange red blue) by(Pbar, rows(1) title("Internal rate of return of four projects") subtitle("Without government financial support") note("Note: P̅ is the market average electricity price")) legend(label(1 "Onshore wind") label(2 "Offshore wind") label(3 "Traditional nuclear") label(4 "Modular nuclear")) ytitle(Internal rate of return (%)) xlabel(0(0.2)1)


***************Section 3.2*****************************************************
****Private investment results with current government financial support*******
## Figure 4
twoway line BCR_onw BCR_ofw BCR_tnp BCR_mnr bcr_onw bcr_ofw bcr_tnp bcr_mnr S,lcolor(green orange red blue green orange red blue) lpattern(solid solid solid solid dash dash dash dash)by(Pbar, rows(1) title("Benefit cost ratio of four projects") subtitle("Comparison with and without government financial support") note("Note1: Discount rate=3%""Note2: P̅ is the market average electricity price""Note3: Solid lines are IRR without government financial support, ""            dash lines are IRR with current government financial support")) legend(label(1 "Onshore wind w/o support") label(2 "Offshore wind w/o support") label(3 "Trad. nuclear w/o support") label(4 "Modular nuclear w/o support") label(5 "Onshore wind w/ support") label(6 "Offshore wind w/ support") label(7 "Trad. nuclear w/ support") label(8 "Modular nuclear w/ support")) ytitle(Benefit cost ratio) xlabel(0(0.2)1)

## Figure 5
twoway line IRR_onw IRR_ofw IRR_tnp IRR_mnr irr_onw irr_ofw irr_tnp irr_mnr S,lcolor(green orange red blue green orange red blue) lpattern(solid solid solid solid dash dash dash dash)by(Pbar, rows(1) title("Internal rate of return of four projects") subtitle("Comparison with and without government financial support") note("Note1: P̅ is the market average electricity price""Note2: Solid lines are IRR without government financial support, ""            dash lines are IRR with current government financial support")) legend(label(1 "Onshore wind w/o support") label(2 "Offshore wind w/o support") label(3 "Trad. nuclear w/o support") label(4 "Modular nuclear w/o support") label(5 "Onshore wind w/ support") label(6 "Offshore wind w/ support") label(7 "Trad. nuclear w/ support") label(8 "Modular nuclear w/ support")) ytitle(Internal rate of return (%)) xlabel(0(0.2)1)


***************Section 3.3*****************************************************
*******Required government financial support for investment parity************

** Feed-in premium
## Figure 6
twoway bar FIP S if Electricityprice==100| Electricityprice ==200| Electricityprice ==270,by(Pbar, title(Increase of feed-in premium on nuclear projects) subtitle(To help modular nuclear become as competitive as wind) note("Note1:We increase the feed-in premium on nuclear while keep all other current support unchanged""Note2: P̅ is the market average electricity price""Note3:Green color means that this method is possible to help nuclear become as good as wind projects""Note4:Blue line is the current feed-in premium level (0) on nuclear projects") rows(1)) barwidth(.05) ytitle(Feed-in premium on nuclear projects (euros/MWh)) xlabel(0(0.1)1) bfcolor(green) yline(0,lcolor(blue) lwidth(.8))

**Tax credit
## Figure 7
twoway (bar TC S if Electricityprice==100,color(red) barwidth(.05) xlabel(0(0.1)1)) (bar TC S if Electricityprice==200 & S<=0.1,color(red) barwidth(.05) xlabel(0(0.1)1)) (bar TC S if Electricityprice==200 & S>0.1,color(green) barwidth(.05) xlabel(0(0.1)1)) (bar TC S if Electricityprice==270,color(green) barwidth(.05) xlabel(0(0.1)1)) if Electricityprice==100|Electricityprice==200|Electricityprice==270,by(Pbar, legend(off) title(Increase of tax credit on nuclear projects) subtitle(To help modular nuclear become as competitive as wind) note("Note1:We increase the tax credit on nuclear projects while keep all other current support unchanged""Note2: P̅ is the market average electricity price""Note3:Red color means that this method is impossible to help nuclear become as good as wind projects""Note4:Green color means that this method is possible to help nuclear become as good as wind projects""Note5:Blue line is the current tax credit level (50%) on nuclear projects") rows(1)) yline(50,lcolor(blue) lwidth(.8)) ytitle(Tax credit on nuclear projects (%))

**Investment aid
## Figure 8
twoway (bar IA S if Electricityprice==100,color(red) barwidth(.05) xlabel(0(0.1)1)) (bar IA S if Electricityprice==200,color(green) barwidth(.05) xlabel(0(0.1)1)) (bar IA S if Electricityprice==270,color(green) barwidth(.05) xlabel(0(0.1)1)) if Electricityprice==100|Electricityprice==200|Electricityprice==270,by(Pbar, legend(off) title(Increase of investment aid on nuclear projects) subtitle(To help modular nuclear become as competitive as wind) note("Note1:We increase the investment aid on nuclear while keep all other current support unchanged""Note2: P̅ is the market average electricity price""Note3:Red color means that this method is impossible to help nuclear become as good as wind projects""Note4:Green color means that this method is possible to help nuclear become as good as wind projects""Note5:Blue line is the current investment aid level (33%) on nuclear projects") rows(1)) yline(33,lcolor(blue) lwidth(.8)) ylabel(33 40 50 60 70 80 90 100) ytitle(Investment aid on nuclear projects (%))
