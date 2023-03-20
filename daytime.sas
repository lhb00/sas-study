Data year;
input dt1 date7. @9 dt2 mmddyy10. @20 dt3 ddmmyy8. @29 dt4 yymmdd10.;
/* 이와 같이 format을 지정해줘야함.*/
put dt1-dt4; /* put: 로그창에 write하라는 의미*/
cards;
02Jan00 01-02-2000 02/01/00 2000/01/02
;run;
