/*1*/
data first;
x=-2;
y=8;
run;
proc print data=first;
run;
proc means data=first;
run;

/*2*/
data second;
input x y z;
datalines;
1 2 7
3 4 8
5 2 7
5 6 9
;
run;
proc print data=second;
run;
proc means data=second;
run;

/*3*/
data third;
SET sashelp.baseball;
run;
proc means data=third;
run;

/*4*/
data fourth;
input a b c $;
datalines;
1 2 a
3 4 b
4 5 c
6 7 d
8 9 e
8 0 f
;
run;
proc print data=fourth(obs=3);
run;

/*5*/
/* To create sas dataset using existing datasets available*/
data baseball;
SET sashelp.baseball;
run;
proc print data=baseball;
title 'baseball dataset';/* to specify specific title to table/dataset*/
run;
proc print data=baseball;
var nhits; /* to specify specific column*/
run;
proc print data=baseball;
sum nhits;/* to get column sum of specified variable*/
run;

/* we use proc sort command to get sorted dataset*/
proc sort data=baseball out=baseball_2;
by natbat;
proc print data=baseball_2;
run;
proc print data=baseball_2 (obs=10);
run;

/* 6*/
proc print data=baseball_2;
var nhits;
run;
proc print data=baseball_2;
sum natbat;
run;
proc print data=baseball_2;
sum natbat;
by team;
run;

/*7*/
/* proc contents provides information from dataset*/
proc contents;
run;

/*8*/
proc means data=baseball_2;
var nhits;
run;

proc sort data=baseball_2;
by team;
run;
/*9*/
proc means data=baseball_2;
var nhits;
by team;
run;

/*10*/
proc freq data=baseball_2;
tables team;
run;

/* 11*/
data baseball;
SET sashelp.baseball;
run;
proc print data=baseball;
sum nhits;/* to get column sum of specified variable*/
run;











































