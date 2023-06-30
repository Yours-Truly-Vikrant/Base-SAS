/* Use of formatted input */
/*1st*/
data first;
input A;
datalines;
123456789
321457865
346542576
652457247
254724524
;
run;


data second;
input @2 A;
datalines;
123456789
321457865
346542576
652457247
254724524
;
run;


data third;
input @2 A @6 B;
datalines;
123456789
321457865
346542576
652457247
254724524
;
run;
proc print data=third;


data fourth;
input A 1-3 B 4-6;
datalines;
123456789
321457865
346542576
652457247
254724524
;
run;
proc print data=fourth;


data fifth;
input @2 A 3.;
datalines;
123456789
321457865
346542576
652457247
254724524
;
run;


data sixth;
input @2 A 3.1;
datalines;
123456789
321457865
346542576
652457247
254724524
;
run;


data marks;
input ID$ 1-2 sub_code$ 3-7 marks 8-11;
datalines;
01ST10142
02ST10226
03ST10341
04ST10428
05ST10551
06ST10618
;
run;



data marks;
input ID$ 1-2 sub_code$ 3-7 @8 marks 4.2; /* @ single trailing operator*/
datalines;
01ST1014245
02ST1022665
03ST1034145
04ST1042854
05ST1055134
06ST1061843
;
run;


data rtoc;
input B @@; /* @@ double trailing operator*/
datalines;
1 4 6 8 10 12 5 6 2
;
run;

data new;
input id$ sales @@;
datalines;
A 16 B 12 C 16 D 12
E 08 F 09 G 13
;
run;

data marksheet;
input Name$ maths_score sci_score @@;
Total=maths_score+sci_score;
datalines;
A 65 58 B 28 65 C 32 55 D 72 81
;
run;
proc print data=marksheet;
sum maths_score sci_score total;
run;
proc contents;
run;

data corn;
input variety$ yeild @@;
datalines;
A 24.2 B 31.5 B 32.0 C 43.9 
C 45.2 A 21.8
;
run;


data scoresheet;
input GROUP$ SCORE;
datalines;
P 77
P 76 
P 74
P 72
P 78 
D 80
D 84
D 88
D 87
D 90
;
RUN;


/* use of do loops*/
data new1;
do i=1 to 10;
y=i**3;
output;
end;
run;
proc print;
run;

/* use of increment operator*/
data seq;
do i=1 to 10 by 2;
y=i**3;
output;
end;
run;
proc print;
run;



/* to drop particular variable from output*/
data seq2 (drop=i);
do i=1 to 10 by 2;
y=i**3;
output;
end;
run;
proc print;
run;

/* decrement operator*/
data seq2 (drop=i);
do i=10 to 1 by -2;
y=i**3;
output;
end;
run;
proc print;
run;



data marks2;
input @1 ID$ 2. @3 sub_code$ 5. @8 marks 4.2; /* @ single trailing operator*/
datalines;
01ST1014245
02ST1022665
03ST1034145
04ST1042854
05ST1055134
06ST1061843
;
run;

























