data INSULIN;
input wk0 wk1 wk2 wk3;
datalines;
31.2 18.4 55.2 69.2
72 37.2 70.4 52
31.2 24 40 42.8 
28.2 20 42.8 40.6
26.4 20.6 26.8 31.6
40.2 32.2 80.4 66.8
27.2 23 60.4 62
33.4 22.2 65.6 59.2
17.6 7.8 15.8 22.4
;
RUN;
PROC PRINT;
RUN;
PROC SGPLOT DATA=INSULIN;
HBOX WK0;
HBOX WK1;
RUN;

data regression;
input x y;
datalines;
5 7
10 8.2
8 8.3
11 10
3 7.2
1 4.3
6 8.8
4 5.8
2 5.7
9 10.1
;
run;
proc reg data=regression;
model y=x;
title 'Fit simple linear regression model y on x';
run;
proc reg data=regression;
model y=x/ p r influence;
plot y*x;
run;


