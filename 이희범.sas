/* 1 */
data ex1;
input type $1-2 power 3-5 .1 time;
cards;
��7856
��56215
��3318
��2348
��2568
��36517
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
