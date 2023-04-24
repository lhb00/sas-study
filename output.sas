/* output문은 output문이 있는 자리에서 즉시 sas 데이터로 기록된다.*/
data out1;
do i=1 to 3;
k = i + 10;
end; /* end를 만나야 변수가 변환되므로 4와 13만 출력된다.*/
run;
proc print;run;

data out2;
do i = 1 to 3;
output;
k = i + 10; /* 첫 output문이 실행될 때 k가 정의되지 않았으므로 첫 번째 k는 결측치다.*/
end;
run;
proc print;run;

data out3;
do i = 1 to 3;
k = i + 10;
output;
end;
run;
proc print;run;

DATA random ( DROP=k); /* */
DO k = 1 TO 10;
x=uniform(0) ; PUT x; /* 로그창에는 10개가 다 출력되지만 당연히 결과 창에는 마지막 1개만 출력된다.*/
END;
RUN;
PROC PRINT; RUN;

DATA random1 (DROP=k);
DO k = 1 TO 10;
x = uniform(0);
OUTPUT; /* output문을 통해서 10개 모두를 sas 데이터에 포함해줘야 한다.*/
END;
RUN;
PROC PRINT; RUN;

data males females;
set examd;
if sex = 'M' then output males; /* 2개 이상의 output이 있다면 if-else건 select건 어느 데이터에 output 해줄 것인지 반드시 지정 필요*/
else output females;
run;

