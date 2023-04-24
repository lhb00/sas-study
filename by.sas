/* by문은 기준변수에 있어서 기준변수를 구분하는 역할*/
/* by문에 의해서 일반적으로*/

data a1;
input name $ sex $;
cards;
Sung	M
Park		F
Kim		M
Lee 		F
;
run;

data aa1;set a1;run;
proc sort data=aa1; by sex; run; /* sex를 기준으로만 오름차순 정렬된다.*/
proc print;run;

data aa2;set a1; run;
proc sort data=aa2; by sex name; run; /* name 변수에 대해서도 오름차순 정렬을 하려면 by문 뒤에 name도 꼭 적어주어야 한다.*/
proc print;run;

data aa3;set a1; run;
proc sort data=aa3; by descending sex name; run; /* descending을 한 번만 적으면, 그 바로 뒤에 있는 변수에만 적용된다. 모든 변수에 적용하려면 일일이 descending을 적어주는 것이 필요하다.*/
proc print;run;

data aa4;set a1;run;
proc sort data=aa4; by descending sex descending name; run; /* name 변수에 대해서도 내림차순 정렬된다.*/
proc print;run;
