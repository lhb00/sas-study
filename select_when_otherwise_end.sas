/* if문은 2개 이상의 조건을 다루려면 중첩해서 해야한다. 반면 select문을 사용하면 다룰 수 있는 조건의 제한이 없다.(이전에는 8개 까지, 요즘엔 제한 X) */
/* select문의 표현 방식에는 2가지가 있는데, 혼동하여 2가지 방식을 하나에 혼재해서 사용하는 경우 에러가 발생하니, 하나의 문장에는 하나의 방식만 사용하자.*/
data exd;
input id 1-2 sex $ 3 age 4-5 edi 6 dept 7 sat 8 wage
      9-15 wkhr 16-19 .1;
cards;
01M29112 3990001429
02F20121 4590002080
03M34231 3400001822
;
run;
/* select문에도 do문과 마찬가지로 end가 있어, select문의 범위를 지정해주어야 한다.*/
data exd1;
set exd;
select(dept); /* select(조건을 지정해 줄 변수)와 같은 형태로 작성한다.*/
when (1) new = wage - wkhr; /* when(조건을 지정해 줄 변수의 해당하는 값)과 같은 형태로 작성한다. 즉 when(dept=1)과 같은 의미*/
when (2) new = wage / wkhr;
otherwise new = wage * wkhr;
end;
run;
proc print;
run;
/* ※유의점: (1) end문이 반드시 있어야한다. (2) end문이 적절한 위치에 있어야한다.*/
data exd2;
	set exd;
	select (dept);
					when (1) do;
											select (edu);
													when (1) new = wage ** 3;
													when (2) new = wage ** 2;
													otherwise;
											end; /* select와 do 각각에 해당하는 end문을 미리 삽입해두는 코딩 방식이 에러 방지에 도움이 된다.*/
									end;
					when (2) new = wage ** 4;
					otherwise; /* otherwise인 경우 new 생성 X*/
	end;
run;
proc print;
run;

data exd3;
			set exd;
			select;
					when (dept=1) do;
												select;
														when (edu=1) new = wage ** 3; /* 이것이 select문의 2번째 방식이다.*/
														when (edu=2) new = wage ** 2; /* 혼재하지 말라는 것이 하나의 select문에서의 얘기지, 하나의 데이터에서 모든 select문을 동일한 방식으로 사용할 필요는 없다.*/
														otherwise;
												end;
					when (dept=2) new = wage ** 4;
			end;
run;
proc print;
run;

data season;
input mon$ TEMP @@;
cards;
JAN 0 FEB 10 MAR 35 APR 55 MAY 65 JUN 72
JUL 78 AUG 68 SEP 55 OCT 50 NOV 35 DEC 10
;
RUN;

DATA season1;
set season;
select;
		when (mon in ('JUN', 'JUL', 'AUG') and temp>70) put 'SUMMER ' mon=; /* in 키워드를 이용하여 select문이 복잡해지는 것을 피할 수 있다.*/
		when (mon in ('MAR', 'APR', 'MAY')) put 'SPRING ' mon=;
		otherwise put 'FALL OR WINTER ' mon=;
end;
run;
