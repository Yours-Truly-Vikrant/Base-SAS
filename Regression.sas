proc print data=KBCNMU.REGRESSIONN;
run;

ods noproctitle;
ods graphics / imagemap=on;

proc reg data=KBCNMU.REGRESSIONN alpha=0.05 plots(only)=(diagnostics residuals 
		fitplot observedbypredicted);
	model Sales=Expenditure /;
	run;
quit;