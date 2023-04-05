/* 1 */
data ex1;
input type $1-2 power 3-5 .1 time;
cards;
가7856
가56215
나3318
나2348
다2568
다36517
;
run;
proc print; run;
/* 2 */
data q4;
input a 1. b $1. c $ @@;
cards;
2m
park 4f kim
;
run;
proc print;run;
