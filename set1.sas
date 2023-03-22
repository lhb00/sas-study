/* sas에서 데이터를 생성하는 방법
1. input문
2. set문
set문을 사용하면 input이나 cards 필요 없이 데이터 생성이 가능하다. 
set은 기능이 2가지 있는데, 오늘은 하나만 배울 것이다. 그것은 기존에 만들어진 데이터를 불러오는 것이다. 다른 하나는 여러 개의 데이터를 합치는 것이다. 통합을 하는 명령문은 또 따로 있는데, 나중에 보도록 하자.*/
data examd;
input id 1-2 sex $ 3 age 4-5 edu 6 dept 7 sat 8 wage
      9-15 wkhr 16-19 .1;
cards;
01M29112 3990001429
02F20111 4590002080
03M22221 3680001500
04F30222 4200019232
05F33121 4700021821
;
run;
proc print;run;
DATA one;
SET examd ( KEEP = ID SEX AGE WAGE) ;
RUN;
proc print;run;
DATA two;
SET examd ( drop = ID SEX AGE WKHR);
RUN;
proc print;run;
data three;
set examd ( keep=id dept sat wage wkhr);
hout=wage/wkhr;
run;
proc print;run;
data four (keep=id dept sat wage wkhr); /* 이 변수들로만 데이터를 생성하겠다고 지정하는 것*/
set examd;
hout=wage/wkhr; /* hout 변수가 나타나지 않음.*/
run;
proc print; run;
data five (keep=id dept sat wage wkhr hout);
set examd;
hout=wage/wkhr;
run;
proc print; run;
