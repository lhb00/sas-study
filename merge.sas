/* set문과 merge문의 결과가 항상 동일한 것은 아니다.*/
DATA owner;
input name $;
cards;
Nancy
Mary
Bill
; run;
DATA car;
input year $ make $ model $;
cards;
1989 Daewoo Lemans
2000 Kia Capital
1985 Hyundai Presto
; RUN;
DATA color;
input color$;
cards;
Silver
Purple
White
Red
; RUN;
DATA driver1;
merge owner car color; /* merge문은 set문과 다르게 일일이 set문을 사용해줄 필요가 없다.*/
/* set문은 데이터의 개수가 작은 것을 기준으로 결정되었지만 merge문은 데이터의 개수가 큰 것을 기준으로 결정된다.*/
/* 반면 공통변수의 경우 set문과 동일하게 뒤에 있는 데이터를 기준으로 결정된다.*/
run;
proc print; run;

DATA driver0; /* set문과 비교*/
set owner; set car; set color;run;
proc print;run;
data car1;
input name $ year make $ model $;
cards;
Nancy 1989 Daewoo Lemans
Mary 2000 Kia Capital
Bill 1985 Hyundai Presto
; run;
data color1;
input name $ color $;
cards;
Mary Purple
Nancy Silver
Ann Grey
Bill White
; run;

proc sort data =car1; /* 마찬가지로 미리 sort하고 결합해야한다. 그렇지 않으면 에러가 발생한다.*/
			by name; run; /* name 변수를 기준으로 공통의 데이터에 맞춰 결합*/
proc sort data =color1;
			by name; run;
data driver2;
			merge car1 color1;
			by name;
			run;
proc print; run;
