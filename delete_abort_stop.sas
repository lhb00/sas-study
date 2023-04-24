data males;
input sex $ course $;
if sex = "F" then delete; /* delete: 조건을 만족하는 데이터를 writing하지 않고 skip하는 명령어*/
/* delete문은 해당하는 데이터를 skip할 뿐이지 data step을 중단 시키는 것은 아니다.*/
cards;
F stat1111
M stat1111
F stat2113
F stat3214
M stat3214
;
run;
proc print;run;

/* 반면 abort와 stop은 data step을 중단하고 아예 빠져나온다는 차이점이 있다.*/
data division;
input x y;
if y = 0 then abort; /* abort문을 사용 시 에러가 발생하긴 하지만 무시하고 proc step을 진행한다.*/
/* 프로그램이 업데이트 되며 abort문이 로직에 맞지 않아 에러가 발생한다. 최신 버전은 수정되었으나 어떤 버전을 사용할지는 모르는 것이므로 stop문을 사용하자..*/
z = x/y;
cards;
1 2
2 0
2 1
;
run;
proc print; run;

data division;
input x y;
if y = 0 then stop; /* 따라서 같은 상황에서는 stop문을 사용하는 것이 현명하다.*/
/* stop문은 data screening할 때 유용*/
z = x/y;
cards;
1 2
2 0
2 1
;
run;
proc print;run;
