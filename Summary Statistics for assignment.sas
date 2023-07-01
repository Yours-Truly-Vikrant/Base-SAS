
ods noproctitle;
ods graphics / imagemap=on;

proc means data=SASHELP.CARS chartype mean std min max n vardef=df;
	var Weight;
	class Origin;
run;

proc univariate data=SASHELP.CARS vardef=df noprint;
	var Weight;
	class Origin;
	histogram Weight;
run;