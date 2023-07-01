ods noproctitle;
ods graphics / imagemap=on;

/* Test for normality */
proc univariate data=SASHELP.HEART normal mu0=0;
	ods select TestsForNormality;
	class Sex;
	var Cholesterol;
run;

/* t test */
proc ttest data=SASHELP.HEART sides=2 h0=0 plots(only showh0)=(summaryPlot 
		intervalPlot qqplot);
	class Sex;
	var Cholesterol;
run;