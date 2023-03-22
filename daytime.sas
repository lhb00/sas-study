Data year;
input dt1 date7. @9 dt2 mmddyy10. @20 dt3 ddmmyy8. @29 dt4 yymmdd10.;
/* 이와 같이 format을 지정해줘야함.*/
put dt1-dt4; /* put: 로그창에 write하라는 의미*/
cards;
02Jan00 01-02-2000 02/01/00 2000/01/02
;run;
options yearcutoff=1920; /* options 다음에 해당하는 키워드는 상당히 많다. page size 등등... 너무 많기 때문에 그때 그때 공부하는 것이 낫다.*/
/* yearcutoff는 다양한 규칙을 가지는데, 당연히 두 자리 숫자로 연도가 입력되었을 때만 적용된다. 4자리 숫자일 때는 적용되지 않는다.*/
/* 100년 범위 안에 있는 숫자만 두 자리 숫자로 지정이 가능하며, 그 밖의 범위 숫자를 지정하고 싶다면 네 자리로 입력해주어야만 한다.*/
data bills;
input lastname $8. @10 datein mmddyy8. +1 dateout mmddyy8. +1 roomrate 6. @35
equipcost 6.;
days=dateout-datein+1;
roomcharge=days*roomrate;
total=roomcharge+equipcost;
cards;
Akron    04/05/99 04/09/99 175.00 298.45
Brown   04/12/99 05/01/99 125.00 326.78
;
run;
proc print; run;
/* 지정 X 시 가지고 있는 속성 그대로 프린트한다.*/


proc print data=bills;
format datein dateout worddate12.; /* worddate12.키워드로 12자리 날짜 형식 포맷 설정 roomrate는 본래 숫자 변수이나, 숫자는 모두 날짜형 변수로 변환 가능하므로 날짜 형식으로 출력 가능하다.*/
run;
