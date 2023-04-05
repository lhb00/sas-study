data exd;
input sex $ course $;
cards;
F stat1111
M stat1111
F stat2113
F stat3214
M stat3214
run;
DATA exd1;
	SET exd;
	IF SEX = 'M'; /* 조건문만 존재. 조건 만족 데이터만 불러옴*/
RUN;
PROC PRINT;
RUN;

DATA exd2;
		SET exd;
		IF SEX = 'M' THEN SEX = 'Male'; /* set문으로 전체 데이터를 불러온 뒤 특정 조건 만족 시 명령문 실행*/
RUN;
PROC PRINT;
RUN;

DATA exd3;
		SET exd;
		IF SEX = 'M' THEN SEX = 'Male';
						ELSE SEX = 'Female'; /* 조건 만족시 1번 명령문 실행, 아니면 2번 명령문 실행*/ /* else문 앞에 if문이 없으면 당연히 논리 상 오류가 발생하게 된다.*/
RUN;
PROC PRINT;
RUN;

DATA exd4;
set exd;
if SEX = 'M' and course= 'stat1111' then sex= "Male"; /* 조건식 2개를 and로 연결하기*/
RUN;
proc print;
run;

DATA exd5;
set exd;
IF SEX = 'M' then if course = 'stat1111' then sex="Male1";
														else sex="Male2"; /* else문은 가장 가까이 있는 if문과 연계된다.*/
				else if  course = 'stat1111' then sex="Female1"; /* 조건식 내의 조건식*/
														  else sex="Female2";
RUN;
proc print;
run;
