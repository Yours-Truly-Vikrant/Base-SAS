data college;
input id$ age race$ sbp dbp heart_Rate;
abp=1/3*sbp+2/3*dbp;
datalines;
4101 18 w 130 80 60
4102 18 w 140 90 70
4103 19 b 120 70 64
4104 17 b 150 90 76
4105 18 b 124 86 72
4106 19 w 145 94 70
4107 23 b 125 78 68
4108 21 w 140 85 74
4109 18 w 150 82 65
4110 20 w 145 95 75
;
proc print noobs;
run;
data KBCNMU.college1;
set work.college;
run;
proc means data=KBCNMU.college1;
var age sbp dbp;
class race;
output out=Descollege mean=av_age av_sbp av_dbp std=sd_age std_sbp std_dbp;
run;
proc print data=kbcnmu.college1;
run;
proc univariate data=kbcnmu.college1 cibasic mu0=130;/* by default confidence interval is both sided */
var sbp;
run;


proc univariate data=kbcnmu.college1 cibasic(type=lower alpha=0.10) mu0=130;/* by default confidence interval is both sided */
var sbp;
run;

proc univariate data=kbcnmu.college1 cibasic mu0=90;/* by default confidence interval is both sided */
var dbp;
run;

proc univariate data=kbcnmu.college1 cibasic;/* by default confidence interval is both sided */
var dbp;
run;

proc univariate data=kbcnmu.college1 plot normal;
var sbp;
run;

proc univariate data=kbcnmu.college1;
var sbp;
run;

proc sgplot data=kbcnmu.college1; /*proc sgplot is used to get boxplot of given variable*/
	vbox sbp;
	yaxis grid;
	title "Boxplot for SBP";
run;

proc plot data=kbcnmu.college1; /* Scatter plot of the data*/
plot sbp*dbp;
run;

data epidemology;
input Severity$ Herdsize$ count;
datalines;
None Large 11  
Low Large 18
High Large 9
None Medium 88
Low Medium 4
High Medium 5
None small 136
Low small 19
High small 9
;
run;
proc print data=epidemology;
run;
proc freq data=epidemology;
run;

proc freq;
weight count;
table severity*herdsize;
run;

proc freq;
weight count;
table severity*herdsize / chisq nocol nopercent norow measures;
run;

