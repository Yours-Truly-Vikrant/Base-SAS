ods graphics / reset width=6.4in height=4.8in imagemap;

proc sort data=SASHELP.STOCKS out=_SeriesPlotTaskData;
	by Date;
run;

proc sgplot data=_SeriesPlotTaskData;
	series x=Date y=Close / group=Stock;
	xaxis grid;
	yaxis grid;
run;

ods graphics / reset;

proc datasets library=WORK noprint;
	delete _SeriesPlotTaskData;
	run;