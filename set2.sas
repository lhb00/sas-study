/* set문 ex. 데이터가 응통 1/2학년 데이터를 결합하는 것이라고 한다면, 상하로 결합해야한다. 이후 좌우결합 설명 예정*/
/* */
data a1;
input name $ sex $;
cards;
Sung M
Park F
Kim M
Lee F
;
run;
data a2;
input name $ sex $;
cards;
Moon F
Yoon M
Oh M
Jang F
;
run;
data a3;
input name $ age;
cards;
Sung 33
Park 23
Kim 12
Lee 45
;
run;
data a4;
input name $ sex $ age;
cards;
Sung F 33
Park M 23
Lee F 45
;
run;
DATA d; SET a1 a2; RUN; /* set에 데이터 2개 할당: 데이터를 2개 불러온다.(X) 데이터 2개를 결합한다.(O)*/
/* 즉 set을 2번 써서 각각의 데이터를 할당하는 것과 하나의 set에 2개의 데이터를 할당하는 것은 결과가 완전히 다르니 주의!*/
PROC PRINT; RUN;

DATA e; SET a2 a3; RUN;
PROC PRINT; RUN;

DATA f; SET a1 a4; RUN;
PROC PRINT; RUN;

data aa1; set a1;run;
data aa2;set a2;run;

proc sort data=aa1; by name; run; /* name 변수를 기준(알파벳 순서)으로 분류 후 결합*/
PROC PRINT; RUN;
proc sort data=aa2; by name; run;
PROC PRINT; RUN;

/* 결합 후 정렬을 하는 것이 아니고, 정렬을 먼저 한 후 결합하는 것이다. 배열 없이 결합하면 에러 발생!*/

DATA ff;
SET aa1 aa2;
by name;
RUN;
PROC PRINT; RUN;
