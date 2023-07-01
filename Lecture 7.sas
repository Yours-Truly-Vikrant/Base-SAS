data biology;
input id sex $ age year height weight;
datalines;
7389 M 24 4 69.2 132.5
3945 F 19 2 58.5 112.0 
4721 F 20 2 65.3 98.6
1835 F 24 4 62.8 102.5
9541 M 21 3 72.5 152.3
2957 M 22 3 67.3 145.8
2158 F 21 2 59.8 104.5
4296 F 25 3 62.5 132.5
4824 M 23 4 69.1 184.4
5736 M 22 3 67.3 149.5
8765 F 19 1 64.3 130.5
5734 F 18 1 68.3 110.2
;
run;
proc print data=biology;
run;
data KBCNMU.Biology;
set biology;
run; 
proc means data=biology;
var age height weight;
run;

 
proc means data=biology;
var age height weight;
class sex year;
run;

proc means data=biology;
var age height weight;
class sex year;
title "To Study Descriptive Statistics of age, height and weight across year and sex";
run;

proc means data=biology;
var age height weight;
class year;
title "To Study Descriptive Statistics of age, height and weight across year";
run;

proc means data=biology;
var height weight;
class year sex;
output out=BioStat mean=av_ht av_wt; 
run;
proc print data=BioStat;
run;

proc means data=biology;
var height weight;
class year sex;
output out=BioStat_sd std=var_ht var_wt; 
run;
proc print data=BioStat_sd;
run;
/* median variance=var sample size=n standard error=stderr maximum=max range minimum=min skewness*/



proc means data=biology;
var height weight;
class year sex;
output out=BioStat_sk skewness=sk_ht sk_wt; 
run;
proc print data=BioStat_sk;
run;


proc means data=biology;
var height weight;
class year sex;
output out=BioStat_ske skew=ske_ht ske_wt; 
run;
proc print data=BioStat_ske;
run;

proc univariate data=biology;
run;

proc univariate data=biology;
var height;
run;


proc univariate data=biology;
var height;
class sex;
run;

proc means data=biology maxdec=3;
run;
