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
DATA males;
SET examd;
IF SEX = 'M'; /* SEX 변수가 M인 데이터만 가져와라*/
/* 딱 IF문만 넣어서 조건을 설정할 수 있는 경우는 이렇게 SET문이 앞으로 오는 경우이다.*/
/* 다른 경우는 에러가 날 것이다.*/
RUN;
proc print;
run;
DATA females;
SET examd;
IF SEX = 'F';
RUN;
proc print;
run;
DATA males1 females1;
/* 데이터에서 정의를 정확하게 하지 않으면 if 문에서 당연히 에러를 일으킬 것이므로 명확하게 정의해야 한다.*/
SET examd;
IF SEX = 'M' THEN OUTPUT males1; /* OUTPUT: SAS 데이터 셋을 생성해라.=>  males1에 조건을 만족하는 케이스를 writing해라=등록시켜라*/
ELSE OUTPUT females1; /* 그 외 케이스는  females1에 writing(등록)해라.*/
run;
proc print data=males1;
run;
proc print data=females1;
run;
/* 앞의 예제와는 다르게 몇번째 데이터를 불러오는지에 방점을 둔 예제다.*/
data rowpick;
set examd (keep=id sex) point=3; /* point: 순서대로 고려했을 때, 해당 숫자에 해당하는 데이터를 불러온다.ㄴ*/
/* 에러 발생: point 자리에는 직접적으로 숫자가 오면 안되고, 변수나 특정 이름을 가진 상수값이 와야한다.*/
run;
data rowpick; /* 실행하면 SAS 프로그램 재실행 해야함.*/
obsn=3; /* 위의 케이스와 같은 오류를 출력하진 않지만, 이렇게 하는 경우 3에 해당하는 케이스만 계속해서 반복해버리는 오류가 발생한다. 그래서 실행하면 안된다.*/
set examd (keep=id sex) point=obsn;
run;
data rowpick;
obsn=3;
set examd (keep=id sex) point=obsn;
stop; /* stop: 3인 케이스를 보는 것을 중지하고 그 다음 단계로 넘어갈 수 있게 한다.*/
/* 케이스를 미처 읽어들이기 전에 명령문을 벗어나버려 관측값이 없어져 버리는 것이다.*/
run;
proc print;
run;
data rowpick;
obsn=3;
set examd (keep=id sex) point=obsn; /* 명령문을 벗어나기 전에 데이터를 기록하여 위의 현상을 방지한다.*/
output;
stop; run;
proc print; run;
