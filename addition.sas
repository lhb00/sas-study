/* 합산 명령어*/

/* Original data*/
DATA division;
INPUT X Y @@;
CARDS;
1 2 2 0 2 1
;
RUN;
PROC PRINT;RUN;

data division1; set division;
x+2; /* x=x+2*/
run;
PROC PRINT;RUN;

data division2; set division;
x+y; /* x=x+y*/
run;
PROC PRINT;RUN;

data division3;set division;
x+(-y); /* x = x-y */ /* 마이너스 기호 사용 시 괄호 사용 필수*/
run;
PROC PRINT;RUN;

data division4; set division;
x-y /* 작동 X, 다만 오류 발생은 안함*/
run;
PROC PRINT;RUN;

data division5;set division;
x=x-y; /* 이렇게 작성하면 가능*/
run;
PROC PRINT;RUN;
