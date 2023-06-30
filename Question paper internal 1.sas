/*Q.3*/
data Scoredata;
input Drug$ Score @@;
datalines;
P 77 P 76 P 74 P 72 P 78
D 80 D 84 D 88 D 87 D 90
; 
run;
proc print data=Scoredata;
run;

/*i*/
data SubsetScoredata;
set Scoredata;
if Score>78;
run;
proc print data=SubsetScoredata;
run;


/*Q.4*/
data Demography;
input Gender$ Age Weight Height;
datalines;
M 50 68 155
F 23 60 165 
M 65 72 180
F 35 55 154
M 15 35 158
;
run;
proc print data=Demography;
run;
proc means data=Demography;
run;


