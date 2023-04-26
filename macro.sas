/* 프로그래밍 언어에서 최종적인 목표는 필요로하는 절차는 하나의 함수로 묶어놓는 것이다. 즉, 일련의 과정을 시스템화 해둔 것이다. 이 과정을 sas로 행하는 방법*/
/* SAS는 R에 비해 프로그래밍 언어의 성격보다 패키지의 성격이 강하지만, 이러한 부분을 공부해둘 필요는 있다.*/
/* 타 프로그래밍 언어에서 function과 같은 기능을 하는 것을 여기서는 macro라고 부른다. */
data ed1;
input sc ge$ @@;
cards;
12 f 17 m 32 f 81 m 28f
; run;

data ed2;
input sc ge$ @@;
cards;
21 m 71 m 23 f 81 m 27 f
; run;

proc sort data=ed1 out=sed1;
by ge sc;
run;
proc print data=sed1; run;

proc sort data=ed2 out=sed2;
by ge sc;
run;
proc print data=sed2; run;

%macro ms(indata,outdata);
proc sort data=&indata out=&outdata;
by ge sc;
run;
%mend;

%ms(indata=ed1, outdata=med1); /* 같은 작업을 데이터만 바꿔가면서 계속 실행할 시 굉장히 유용하다. */
%ms(indata=ed2, outdata=med2); /* macro에 관해서는 % 표시를 붙여서 작업한다고 생각하면 된다. 즉, % keyword 형태의 문법이다.*/

proc print data=med1;
proc print data=med2;

/* 자세히 다루려면 한 학기를 할애해야 하므로 macro에 관한 내용은 여기까지만 숙지해두면 된다.*/
