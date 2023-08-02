******* Qu & bang **********************************************
***"Comparative Investment Analysis of Wind and Nuclear Energy: Assessing the Impact of Changes in the Electricity Mix and Required Government Support for Investment Parity"*************************


**************Without financial support*******************************
**BCR results
## Figure 2
twoway line BCR_1 BCR_2 BCR_3 BCR_4 Windshare, lcolor(green orange red blue) yaxis(1) by(EP, rows(1) title("Benefit cost ratio of four projects") subtitle("Without government financial support") note("Note1: Discount rate=8%" "Note2: P̅ is the market average electricity price")) legend(label(1 "Onshore wind") label(2 "Offshore wind") label(3 "Traditional nuclear") label(4 "Modular nuclear")) ytitle(Benefit-cost ratio) ylabel(0(0.5)2.5) xlabel(0(0.2)1) ylabel(, angle(horizontal))

** IRR results
## Figure 3
twoway line IRR_1 IRR_2 IRR_3 IRR_4 Windshare,lcolor(green orange red blue) by(EP, rows(1) title("Internal rate of return of four projects") subtitle("Without government financial support") note("Note: P̅ is the market average electricity price")) legend(label(1 "Onshore wind") label(2 "Offshore wind") label(3 "Traditional nuclear") label(4 "Modular nuclear")) ytitle(Internal rate of return (%)) xlabel(0(0.2)1)


***********************Comparative studies*****************************
**Comparison for BCR vs bcr*
## Graph-4
twoway line BCR_1 BCR_2 BCR_3 BCR_4 bcr_1 bcr_2 bcr_3 bcr_4 Windshare,lcolor(green orange red blue green orange red blue) lpattern(solid solid solid solid dash dash dash dash) by(EP, rows(1) title("Benefit cost ratio of four projects") subtitle("Comparison with and without government financial support") note("Note1: Discount rate=8%""Note2: P̅ is the market average electricity price""Note3: Solid lines are IRR without government financial support, dash lines are IRR with current government financial support")) legend(pos(3) label(1 "Onshore wind w/o support") label(2 "Offshore wind w/o support") label(3 "Trad. nuclear w/o support") label(4 "Modular nuclear w/o support") label(5 "Onshore wind w/ support") label(6 "Offshore wind w/ support") label(7 "Trad. nuclear w/ support") label(8 "Modular nuclear w/ support")) ytitle(Benefit cost ratio) xlabel(0(0.2)1) ylabel(0(2)5) legend(size(small) rows(2)) ysize(3) xsize(7)

** Comparison for IRR vs irr*
## Graph-5
twoway line IRR_1 IRR_2 IRR_3 IRR_4 irr_1 irr_2 irr_3 irr_4 Windshare,lcolor(green orange red blue green orange red blue) lpattern(solid solid solid solid dash dash dash dash)by(EP, rows(1) title("Internal rate of return of four projects") subtitle("Comparison with and without government financial support") note("Note1: P̅ is the market average electricity price""Note2: Solid lines are IRR without government financial support, dash lines are IRR with current government financial support")) legend(label(1 "Onshore wind w/o support") label(2 "Offshore wind w/o support") label(3 "Trad. nuclear w/o support") label(4 "Modular nuclear w/o support") label(5 "Onshore wind w/ support") label(6 "Offshore wind w/ support") label(7 "Trad. nuclear w/ support") label(8 "Modular nuclear w/ support")) ytitle(Internal rate of return (%)) xlabel(0(0.2)1) ysize(3) xsize(7) legend(size(small) rows(2))


***********************Future financial support to help modular nuclear become as competitive as wind projects**********************

** Feed-in premium
## Graph-6
twoway bar feedinpremium Windshare if Electricityprice==100| Electricityprice ==175| Electricityprice ==250,by(EP, title(Increase of feed-in premium on nuclear projects) subtitle(To help the modular nuclear become as competitive as wind energy) note("Note1: We increase the feed-in premium on nuclear projects while keep other current support unchanged""Note2: P̅ is the market average electricity price""Note3: Green color means that this method is possible to help nuclear become as good as wind projects""Note4: Blue line is the current feed-in premium level (0) on nuclear projects", size(small)) rows(1)) barwidth(.05) ytitle(Feed-in premium on nuclear projects (euros/MWh), size(small)) xlabel(0(0.1)1) bfcolor(green) yline(0,lcolor(blue) lwidth(.8))

**Tax credit
## Graph-7
twoway (bar taxcredit Windshare if Electricityprice==100 | Electricityprice ==175,color(red) barwidth(.05) xlabel(0(0.1)1)) (bar taxcredit Windshare if Electricityprice==250,color(green) barwidth(.05) xlabel(0(0.1)1)) if Electricityprice==100|Electricityprice==175|Electricityprice==250,by(EP, legend(off) title(Increase of tax credit on nuclear projects) subtitle(To help the modular nuclear become as competitive as wind energy) note("Note1: We increase the tax credit on nuclear projects while keep all other current support unchanged""Note2: P̅ is the market average electricity price""Note3: Red color means that this method is impossible to help nuclear become as good as wind projects""Note4: Green color means that this method is possible to help nuclear become as good as wind projects""Note5: Blue line is the current tax credit level (50%) on nuclear projects") rows(1)) yline(50,lcolor(blue) lwidth(.8)) ytitle(Tax credit on nuclear projects (%)) ylabel(50(25)100)

**Investment aid
## Graph-8
twoway (bar investmentaid Windshare if Electricityprice==100,color(red) barwidth(.05) xlabel(0(0.1)1)) (bar investmentaid Windshare if Electricityprice==175,color(green) barwidth(.05) xlabel(0(0.1)1)) (bar investmentaid Windshare if Electricityprice==250,color(green) barwidth(.05) xlabel(0(0.1)1)) if Electricityprice==100|Electricityprice==175|Electricityprice==250,by(EP, legend(off) title(Increase of investment aid on nuclear projects) subtitle(To help the modular nuclear become as competitive as wind energy) note("Note1: We increase the investment aid on nuclear while keep all other current support unchanged""Note2: P̅ is the market average electricity price""Note3: Red color means that this method is impossible to help nuclear become as good as wind projects""Note4: Green color means that this method is possible to help nuclear become as good as wind projects""Note5: Blue line is the current investment aid level (33%) on nuclear projects") rows(1)) yline(33,lcolor(blue) lwidth(.8)) ylabel(33 40 50 60 70 80 90 100) ytitle(Investment aid on nuclear projects (%))


