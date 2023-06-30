data Blood;
input Severity$ O A AB B;
datalines;
Moderate_Advanced   7  5  3 13
MInimal             27 32 8 18
Not_Present         55 50 7 24
;
proc print data=Blood;
run;

data baseball_1;
SET sashelp.baseball;
proc print data=baseball_1;
proc univariate data=sashelp.baseball;
var nhits;
run;


proc univariate data=baseball_1;
var natbat;
run;

proc univariate data=baseball_1;
var nruns;
run;


proc univariate data=baseball_1 normal;
var nhits;
run;

proc univariate data=baseball_1 plot;
var nhits;
run;

proc univariate data=baseball_1 normal;
var nruns;
run;

proc univariate data=baseball_1 plots;
var nruns;
run;

proc univariate data=baseball_1 cibasic;
var nruns;
run;

proc univariate data=baseball_1;
var nhits;
histogram/normal(colo)















