/*conditional execution*/
data first;
input Age @@;
datalines;
1 3 7 9 12 17 21 23 26 29 30 42 45 51
;
proc print data=Age; 

data first;
input Age @@;
datalines;
1 3 7 9 12 17 21 23 26 29 30 42 45 51
;
proc print; 

/*if then condition*/
data second;
set first;
if 0<=Age<=10 then Age_2=0;
run;
proc print data=second;


/*if then else conditon*/
data second;
set first;
if 0<=Age<=10 then Age_2=0;
else Age_2=1;
run;
proc print data=second;
run;

/* if then else if condition*/
data third;
set first;
if 0<=age<10 then age_2=0;
else if 10<=age<20 then age_2=1;
else if 20<=age<=30 then age_2=2;
else if 30<age<=40 then age_2=3;
else if age>40 then age_2=4;
run;


data classdata;
set sashelp.class;
run;
proc print data=classdata;


/*to create subset from accessed dataset*/
data class_2;
set classdata;
if age>14 and weight<=115;
run;
proc print data=class_2;


/*directly editing dataset and dropping name column*/
data classdata(drop=name);
set sashelp.class;
if age>14 and weight<115;
run;


/*to create subset from accessed dataset*/
data class_3;
set classdata;
if age>14 and weight<=115;
run;
proc print;
run;

/*to check any missing values present in variable name 'age'*/
data class5;
set classdata;
if age=. then age_3=8;
run;

*use of keep command;
data shoes1;
set sashelp.shoes;
run;
proc print shoes1;

*selecting particular columns from data;
*adding new variable name commission=(sales-returns)*0.1;
*obtaining thte subset data having region canada and product slipper;
data shoes1;
set shoes1;
keep product subsidiary sales;
run;
title 'Edited Shoes Dataset';
proc print data=shoes1;

data shoes2;
set sashelp.shoes;
if region="Canada" and product="Slipper";
run;

data shoes3;
set shoes2;
keep product subsidiary sales returns commission;
commission=(sales-returns)*0.10;
run;
proc print shoes3;
run;



data shoes9;
set shoes2;
keep product subsidiary sales returns commission;
commission=(sales-returns)*0.10;
if region="Canada" and product="Slipper";
run;
proc print shoes9;
run;


*Sir technique;
data slipper;
set sashelp.shoes;
if region="Canada" and product="Slipper"
then Commission=(sales-returns)*0.1;
keep region product sales returns commission;
run;

*Sir technique OR;
data slipper2;
set sashelp.shoes;
if region="Canada" and product="Slipper"
then Commission=(sales-returns)*0.1;
else delete;
keep region product sales returns commission;
run;


data slipper2;
set sashelp.shoes;
format commission comma4.;
if region="Canada" and product="Slipper"
then Commission=(sales-returns)*0.1;
else delete;
keep region product sales returns commission;
run;

data first;
input subj gender$ age;
datalines;
1000 M 42
1001 M 20
1002 F 53
1003 F 40
1004 M 29
1005 F 29
;
run;
data second;
input subj disease$ test$;
datalines;
1000 Y Y
1001 N Y
1002 Y Y
1004 N N
;
run;
















































