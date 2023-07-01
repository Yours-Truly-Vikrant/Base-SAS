data assignment;
set kbcnmu.weather1;
run;
proc print noobs;
run;

proc means data=assignment;
VAR DTMX DTM JTMX JTMN;
run;


proc univariate data=assignment;
VAR DTMX DTM JTMX JTMN;
run;

proc sgplot data=assignment; /*proc sgplot is used to get boxplot of given variable*/
	vbox DTMX;
	yaxis grid;
	title "Boxplot for Dhule maximum temperature";
run;



proc sgplot data=assignment; /*proc sgplot is used to get boxplot of given variable*/
	vbox JTMX;
	yaxis grid;
	title "Boxplot for Jalgaon maximum temperature";
run;

proc univariate data=assignment cibasic mu0=21;/* by default confidence interval is both sided */
var DTM;
run;
