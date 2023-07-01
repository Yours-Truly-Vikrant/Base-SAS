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

data new;
merge first second;
by subj;
run;
proc print data=new;
run;


data new2;
set new;
if disease="Y" and test="Y";
else delete;
keep subj disease;
run;
proc print data=new2;
run;


data new_1;
set first second;
run;
proc print noobs;
run;

data new_1;
set first second;
label subj="Subject";
run;
proc print label;
run;


data new_3;
set first second;
label subj="Subject";
run;
proc print label;
title "Çombined Data Sets";
run;


data zoom;
input subj Gender$ age Date mmddyy8.;
format Date mmddyy8.;
datalines;
1000 M 42 03/10/96
1001 M 20 02/19/96
1002 F 53 02/01/96
1003 F 40 12/31/95
1004 M 29 01/10/97 
;
run;
proc print data=zoom;
run;

data meet;
input subj disease$ test$ date mmddyy10.;
format date mmddyy10.;
datalines;
1000 Y Y 03/17/1996
1001 N Y 03/01/1996
1002 N N 02/18/1996
1003 Y Y 04/05/1996
1004 N N 02/08/1996
;
run;


data soft;
set meet zoom;
run;
proc print data=soft;
run;

data cake;
merge zoom meet;
run;
proc print data=cake;
run;

*Creating new libraries for purpose of use;
libname
