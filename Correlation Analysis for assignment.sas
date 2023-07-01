ods noproctitle;
ods graphics / imagemap=on;

proc corr data=SASHELP.CARS pearson nosimple plots=scatter(ellipse=none);
	var MPG_City MPG_Highway;
	with MSRP;
run;