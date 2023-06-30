data Scores;
input Y X;
label Y="Test Scores" X="Homework Score";
datalines;
95 96														
80 77
0 0 
0 0
79 78
77 64
72 89
66 47
98 90
90 93
0 18
95 86
35 0
50 30
72 59	
55 77	
75 74	
66 67
;
run;
proc reg data=Scores;
	model Y=X/p clb;
	plot Y*X/ nomodel nostat;
	title ‘Simple Linear Regression of TEST scores data’;
run;
